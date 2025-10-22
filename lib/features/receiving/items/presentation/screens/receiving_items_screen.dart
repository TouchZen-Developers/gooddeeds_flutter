import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/receiving/items/presentation/widgets/receiving_item_card.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class ReceivingItemsScreen extends StatefulWidget {
  const ReceivingItemsScreen({super.key});

  @override
  State<ReceivingItemsScreen> createState() => _ReceivingItemsScreenState();
}

class _ReceivingItemsScreenState extends State<ReceivingItemsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        NotificationPermissionRoute([
          context.loc.appUpdates,
          context.loc.somebodyOrdersYourItem,
          context.loc.deliveryConfirmation,
        ]).push(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGap(MediaQuery.of(context).padding.top + 32),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello John!',
                    style: context.textStyle.heading4,
                  ),
                  const Gap(8),
                  Text(
                    context.loc.receivingHomeHeader,
                    style: context.textStyle.bodySmallRegular,
                  ),
                ],
              ),
            ),
          ),
          const SliverGap(32),
          SliverList.separated(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  const ItemDetailsRoute().push(context);
                },
                child: ReceivingItemCard(
                  color: index == 0 ? BrandTones.info : BrandTones.error,
                  title: index == 0 ? 'Food' : 'Medical Supplies',
                  iconPath: index == 0
                      ? Assets.icons.fillCart.path
                      : Assets.icons.medical.path,
                ),
              ),
            ),
            itemCount: 2,
            separatorBuilder: (BuildContext context, int index) {
              return const Gap(12);
            },
          ),
        ],
      ),
      floatingActionButton: PrimaryButton(
        withShadow: true,
        label: context.loc.requestItems,
        onPressed: () {
          const RequestItemsRoute().push(context);
        },
      ),
    );
  }
}

// ignore: unused_element
class _EmptyItems extends StatelessWidget {
  const _EmptyItems();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.emptyItems.svg(height: 140),
            const Gap(40),
            Text(
              context.loc.noItem,
              style: context.textStyle.heading4,
            ),
            const Gap(8),
            Text(
              context.loc.noItemDesc,
              textAlign: TextAlign.center,
              style: context.textStyle.bodyLargeRegular.copyWith(
                color: context.onSurface.shade50,
              ),
            ),
            const Gap(40),
            PrimaryButton(
              label: context.loc.requestItems,
              onPressed: () {
                const RequestItemsRoute().push(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
