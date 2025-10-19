import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:gooddeeds/features/receiving/items/presentation/widgets/item_widget.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/gd_action_dialog.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';
import 'package:gooddeeds/src/config/routes/app_router.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.itemDetails),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: context.colors.outline),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: BrandTones.error.withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Assets.icons.medical.svg(),
                        ),
                        const Gap(16),
                        Expanded(
                          child: Text(
                            'Medical',
                            style: context.textStyle.bodyLargeSemiBold,
                          ),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Divider(color: context.onSurface.shade20, height: 1),
                    const Gap(20),
                    const Column(
                      children: [
                        EditItemWidget(),
                        Gap(16),
                        EditItemWidget(),
                      ],
                    ),
                    const Gap(20),
                    Divider(color: context.onSurface.shade20, height: 1),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GDText(
                          context.loc.cost,
                          style: context.textStyle.bodyMediumRegular,
                        ),
                        GDText(
                          '\$200.00',
                          style: context.textStyle.bodyLargeSemiBold,
                        ),
                      ],
                    ),
                    const Gap(20),
                    PrimaryButton(
                      fullWidth: true,
                      variant: ButtonVariant.outlined,
                      size: ButtonSize.small,
                      label: context.loc.removeTheseItems,
                      onPressed: () {
                        showDialog<void>(
                          context: context,
                          builder: (_) => GDActionDialog(
                            title: context.loc.removeItems,
                            message: context.loc.removeItemsDesc,
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
                  ],
                ),
              ),
            ],
          ),
        ),
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
