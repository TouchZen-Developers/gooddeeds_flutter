import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/auth/register/pending/presentation/screens/application_pending_screen.dart';
import 'package:gooddeeds/features/beneficiary/status/presentation/bloc/beneficiary_status_bloc.dart';
import 'package:gooddeeds/features/donating/event/presentation/widgets/event_card.dart';
import 'package:gooddeeds/features/donating/family/presentation/widgets/family_card.dart';
import 'package:gooddeeds/features/donating/home/presentation/widgets/filter_modal.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/data/user_role.dart';
import 'package:gooddeeds/shared/design_system/components/gd_status_dialog.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/shared/services/beneficiary_status_dialog_service.dart';
import 'package:gooddeeds/src/config/di/injector.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DonaitingHomeScreen extends StatefulWidget {
  const DonaitingHomeScreen({super.key});

  @override
  State<DonaitingHomeScreen> createState() => _DonaitingHomeScreenState();
}

class _DonaitingHomeScreenState extends State<DonaitingHomeScreen> {
  @override
  void initState() {
    super.initState();
    // Don't call API here, wait for BlocListener to be ready
  }

  void _checkBeneficiaryStatus() async {
    final prefs = getIt<SharedPreferences>();
    final userRoleString = prefs.getString(kPrefUserRole);
    final userRole = UserRoleX.fromString(userRoleString);
    final dialogService = getIt<BeneficiaryStatusDialogService>();

    // Only call API if:
    // 1. User role is beneficiary
    // 2. Dialog hasn't been shown before (first time)
    // 3. This is the first time after login
    if (userRole == UserRole.beneficiary &&
        !dialogService.hasDialogBeenShown() &&
        dialogService.isFirstTimeAfterLogin()) {
      final bloc = getIt<BeneficiaryStatusBloc>();
      bloc.add(const BeneficiaryStatusEvent.getBeneficiaryStatus());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BeneficiaryStatusBloc>(),
      child: BlocListener<BeneficiaryStatusBloc, BeneficiaryStatusState>(
        listener: (context, state) {
          state.when(
            initial: () {
              // Call API when BlocListener is ready
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _checkBeneficiaryStatus();
              });
            },
            loading: () {},
            success: (response) {
              final dialogService = getIt<BeneficiaryStatusDialogService>();

              // Only show dialog if it hasn't been shown before and this is first time after login
              if (!dialogService.hasDialogBeenShown() &&
                  dialogService.isFirstTimeAfterLogin()) {
                _showStatusDialog(context, response, dialogService);
                // Mark dialog as shown and mark that user has visited home
                dialogService.markDialogAsShown();
                dialogService.markNotFirstTimeAfterLogin();
              }
            },
            failure: (message) {
              // Handle error silently or show a snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello John',
                                style: context.textStyle.heading4,
                              ),
                              const Gap(8),
                              Text(
                                context.loc.donaitingHomeHeader,
                                style: context.textStyle.bodySmallRegular,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            showCupertinoModalPopup(
                              context: context,
                              barrierColor: Colors.black45,
                              builder: (context) {
                                return FilterModal(
                                  onApply: () {
                                    context.pop();
                                    const FamilyListRoute().push(context);
                                  },
                                );
                              },
                            );
                          },
                          icon: Container(
                            width: 44,
                            height: 44,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: context.colors.outline),
                            ),
                            child: Assets.icons.filter.svg(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      context.loc.recentEvents,
                      style: context.textStyle.heading5,
                    ),
                  ),
                  const Gap(16),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          const EventDetailsRoute().push(context);
                        },
                        child: const EventCard(),
                      ),
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Gap(16),
                    ),
                  ),
                  const Gap(24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            context.loc.helpFamilyNearYou,
                            style: context.textStyle.heading5,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            visualDensity: const VisualDensity(
                              vertical: VisualDensity.minimumDensity,
                              horizontal: VisualDensity.minimumDensity,
                            ),
                            padding: EdgeInsets.zero,
                            textStyle: context.textStyle.bodyMediumMedium,
                          ),
                          onPressed: () {
                            const FamilyListNearRoute().push(context);
                          },
                          child: Text(context.loc.seeAll),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16),
                  SizedBox(
                    height: 122,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SizedBox(
                        width: MediaQuery.of(context).size.width / 1.35,
                        child: GestureDetector(
                          onTap: () {
                            const FamilyDetailsRoute().push(context);
                          },
                          child: const FamilyCard(),
                        ),
                      ),
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Gap(16),
                    ),
                  ),
                  const Gap(24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            context.loc.recentlyAffected,
                            style: context.textStyle.heading5,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            visualDensity: const VisualDensity(
                              vertical: VisualDensity.minimumDensity,
                              horizontal: VisualDensity.minimumDensity,
                            ),
                            padding: EdgeInsets.zero,
                            textStyle: context.textStyle.bodyMediumMedium,
                          ),
                          onPressed: () {
                            const RecentlyAffectedRoute().push(context);
                          },
                          child: Text(context.loc.seeAll),
                        ),
                      ],
                    ),
                  ),
                  const Gap(16),
                  SizedBox(
                    height: 122,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SizedBox(
                        width: MediaQuery.of(context).size.width / 1.35,
                        child: const FamilyCard(),
                      ),
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Gap(16),
                    ),
                  ),
                  const Gap(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showStatusDialog(
    BuildContext context,
    dynamic response,
    BeneficiaryStatusDialogService dialogService,
  ) {
    final status = response.data.beneficiary.status.name;
    final message = response.data.message;

    // Show appropriate dialog based on status
    if (status == 'pending') {
      showGDStatusDialog(
        context: context,
        svg: Assets.icons.applicationPending,
        title: 'Application Pending',
        message: message,
        primaryLabel: 'View Details',
        onPrimary: () {
          // Navigate to ApplicationPendingScreen
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ApplicationPendingScreen(),
            ),
          );
        },
        svgSize: const Size(45, 45),
      );
    } else if (status == 'approved') {
      showGDStatusDialog(
        context: context,
        svg: Assets.icons.checkbox,
        // Using checkbox as success icon
        title: 'Congrats!',
        message: message,
        primaryLabel: 'Start Requesting Items',
        onPrimary: () {
          // Navigate to appropriate screen for approved users
          // You can add navigation logic here
        },
        svgSize: const Size(45, 45),
      );
    } else if (status == 'rejected') {
      showGDStatusDialog(
        context: context,
        svg: Assets.icons.reject,
        title: 'Application Rejected!',
        message: message,
        primaryLabel: 'OK',
        onPrimary: () {
          // Just close the dialog
        },
        svgSize: const Size(45, 45),
      );
    }
  }
}
