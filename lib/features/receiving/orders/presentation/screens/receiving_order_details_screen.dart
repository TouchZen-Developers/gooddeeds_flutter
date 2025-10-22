import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:gooddeeds/features/donating/orders/presentation/widgets/status_widget.dart';
import 'package:gooddeeds/features/receiving/items/presentation/widgets/item_widget.dart';
import 'package:gooddeeds/features/receiving/orders/presentation/widgets/order_details_report_modal.dart';
import 'package:gooddeeds/features/receiving/orders/presentation/widgets/submit_note_dialog.dart';
import 'package:gooddeeds/gen/assets.gen.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/components/primary_button.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/typography/gd_text.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class ReceivingOrderDetailsScreen extends StatelessWidget {
  const ReceivingOrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: context.loc.orderDetails,
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                useRootNavigator: true,
                context: context,
                builder: (context) {
                  return const OrderDetailsReportModal();
                },
              );
            },
            child: Container(
              width: 44,
              height: 44,
              padding: const EdgeInsets.all(14),
              child: Assets.icons.report.svg(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: context.colors.outline),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Column(
                        children: [
                          const ItemWidget(),
                          const Gap(20),
                          Divider(color: context.colors.outline, height: 1),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GDText(
                                context.loc.orderID,
                                style: context.textStyle.bodyMediumRegular,
                              ),
                              GDText(
                                '#26384',
                                style: context.textStyle.bodyLargeSemiBold,
                              ),
                            ],
                          ),
                          const Gap(24),
                          Row(
                            children: [
                              GDText(
                                context.loc.category,
                                style: context.textStyle.bodyMediumRegular,
                              ),
                              const Spacer(),
                              Container(
                                width: 24,
                                height: 24,
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: BrandTones.error.withValues(alpha: .1),
                                  shape: BoxShape.circle,
                                ),
                                child: Assets.icons.medical.svg(),
                              ),
                              const Gap(8),
                              GDText(
                                'Medical',
                                style: context.textStyle.bodyLargeSemiBold,
                              ),
                            ],
                          ),
                          const Gap(24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GDText(
                                context.loc.orderID,
                                style: context.textStyle.bodyMediumRegular,
                              ),
                              const StatusWidget(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(24),
                    GDText(
                      context.loc.noteReceived,
                      style: context.textStyle.bodyLargeSemiBold,
                    ),
                    const Gap(12),
                    const _Note(
                      text:
                          'Thank you for the gift! May you and your family always have a happy life.',
                    ),
                  ],
                ),
              ),
            ),
            PrimaryButton(
              fullWidth: true,
              label: context.loc.markAsReceived,
              onPressed: () {},
            ),
            const Gap(16),
            PrimaryButton(
              fullWidth: true,
              variant: ButtonVariant.outlined,
              label: context.loc.sendThankYouNote,
              onPressed: () {
                showDialog<void>(
                  context: context,
                  barrierColor: Colors.black.withValues(alpha: 0.45),
                  builder: (_) => const SubmitNoteDialog(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Note extends StatelessWidget {
  const _Note({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: context.onSurface.shade10,
        border: Border.all(color: context.onSurface.shade20!),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: GDText(text, style: context.textStyle.bodyMediumRegular),
    );
  }
}
