import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/donating/payment/presentation/widgets/credit_card_item.dart';
import 'package:gooddeeds/features/donating/profile/presentation/widgets/card_option_modal.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/gd_action_dialog.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class DonatingPaymentScreen extends StatelessWidget {
  const DonatingPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.payment),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            sliver: SliverList.separated(
              itemBuilder: (context, index) => CreditCardItem(
                selected: index == 0,
                onMore: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (_) => CardOptionModal(
                      onSetAsDefault: () {},
                      onEdit: () {},
                      onDelete: () {
                        context.pop();
                        showDialog<void>(
                          context: context,
                          builder: (_) => GDActionDialog(
                            title: context.loc.deleteCard,
                            message: context.loc.deleteCardDesc,
                            onYes: () {
                              context.pop();
                            },
                            onNo: () {
                              context.pop();
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              separatorBuilder: (BuildContext context, int index) {
                return const Gap(12);
              },
              itemCount: 2,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryButton(
                label: context.loc.addNewCard,
                variant: ButtonVariant.outlined,
                onPressed: () {
                  const DonatingPaymentAddNewCardRoute().push(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: unused_element
class _EmptyCard extends StatelessWidget {
  const _EmptyCard();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.emptyCard.svg(height: 140),
            const Gap(40),
            Text(
              context.loc.emptyCardDesc,
              textAlign: TextAlign.center,
              style: context.textStyle.bodyLargeRegular.copyWith(
                color: context.onSurface.shade50,
              ),
            ),
            const Gap(40),
            PrimaryButton(
              label: context.loc.addNewCard,
              onPressed: () {
                const DonatingPaymentAddNewCardRoute().push(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
