import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gooddeeds/shared/design_system/components/gd_bottom_sheet.dart';
import 'package:gooddeeds/shared/design_system/theme/context_ext.dart';
import 'package:gooddeeds/shared/design_system/tokens/colors.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart'; // 👈 loc

import '../../../../../../gen/assets.gen.dart';
import '../bloc/register_family_photo_bloc.dart';

enum _PickSource { gallery, camera }

enum _EditAction { replace, delete }

class FamilyPhotoCard extends StatelessWidget {
  const FamilyPhotoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFamilyPhotoBloc, RegisterFamilyPhotoState>(
      builder: (context, state) {
        final child = state.when<Widget>(
          idle: () => _Empty(onTap: () => _onPick(context)),
          uploading: (p) => _Uploading(progress: p),
          ready: (file) => _Image(file: file, onEdit: () => _onEdit(context)),
          deleting: () =>
              _Uploading(progress: null, label: context.loc.deleting),
          error: (m) => _Empty(onTap: () => _onPick(context), error: m),
        );
        return _DottedCard(child: child);
      },
    );
  }

  // ---------- Actions
  Future<void> _onPick(BuildContext context) async {
    final bloc = context.read<RegisterFamilyPhotoBloc>();
    final src = await _showPickSheet(context);
    if (src == null) return;
    switch (src) {
      case _PickSource.gallery:
        bloc.add(const RegisterFamilyPhotoEvent.pickFromGallery());
        break;
      case _PickSource.camera:
        bloc.add(const RegisterFamilyPhotoEvent.pickFromCamera());
        break;
    }
  }

  Future<void> _onEdit(BuildContext context) async {
    final bloc = context.read<RegisterFamilyPhotoBloc>();
    final action = await _showEditSheet(context);
    if (action == null) return;

    if (action == _EditAction.replace) {
      if (!context.mounted) return;
      final src = await _showPickSheet(context);
      if (src == null) return;
      switch (src) {
        case _PickSource.gallery:
          bloc.add(const RegisterFamilyPhotoEvent.pickFromGallery());
          break;
        case _PickSource.camera:
          bloc.add(const RegisterFamilyPhotoEvent.pickFromCamera());
          break;
      }
    } else {
      bloc.add(const RegisterFamilyPhotoEvent.delete());
    }
  }

  Future<_PickSource?> _showPickSheet(BuildContext context) async {
    final picked = await GDBottomSheet.showList<_PickSource>(
      context,
      items: const [_PickSource.gallery, _PickSource.camera],
      labelOf: (s) => s == _PickSource.gallery
          ? context.loc.fromGallery
          : context.loc.openCamera,
      iconColorOf: (_) => BrandTones.secondary,
      leadingSvgBuilder: (s, color) {
        final icon = s == _PickSource.gallery
            ? Assets.icons.gallery
            : Assets.icons.camera;
        return icon.svg(
          width: 22,
          height: 22,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      },
    );
    return picked;
  }

  Future<_EditAction?> _showEditSheet(BuildContext context) async {
    final action = await GDBottomSheet.showList<_EditAction>(
      context,
      items: const [_EditAction.replace, _EditAction.delete],
      labelOf: (s) => s == _EditAction.replace
          ? context.loc.replacePhoto
          : context.loc.deletePhoto,
      iconColorOf: (s) =>
          s == _EditAction.replace ? BrandTones.secondary : BrandTones.primary,
      textColorOf: (s) =>
          s == _EditAction.delete ? BrandTones.primary : BrandTones.grey100,
      leadingSvgBuilder: (s, color) {
        final icon =
            s == _EditAction.replace ? Assets.icons.card : Assets.icons.delete;
        return icon.svg(
          width: 22,
          height: 22,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      },
    );
    return action;
  }
}

// ---------- Presentational pieces
class _DottedCard extends StatelessWidget {
  const _DottedCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: BrandTones.grey30,
      strokeWidth: 1.5,
      dashPattern: const [8, 6],
      borderType: BorderType.RRect,
      radius: const Radius.circular(14),
      padding: EdgeInsets.zero,
      child: Material(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(height: 190, width: double.infinity, child: child),
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty({required this.onTap, this.error});

  final VoidCallback onTap;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.icons.gallery.svg(),
            const SizedBox(height: 8),
            Text(
              context.loc.uploadPhoto,
              style: context.textStyle.bodyMediumRegular
                  .copyWith(color: BrandTones.grey50),
            ),
          ],
        ),
      ),
    );
  }
}

class _Uploading extends StatelessWidget {
  const _Uploading({required this.progress, this.label});

  final double? progress;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.gallery.svg(),
          const SizedBox(height: 8),
          Text(label ?? context.loc.uploadingPhotos),
          const SizedBox(height: 14),
          LinearProgressIndicator(value: progress, color: BrandTones.secondary),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({required this.file, required this.onEdit});

  final File file;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.file(file, fit: BoxFit.cover)),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(onTap: onEdit),
          ),
        ),
        Positioned(
          right: 8,
          top: 8,
          child: Material(
            color: Colors.black.withValues(alpha: 0.30),
            shape: const CircleBorder(),
            child: IconButton(
              icon: Assets.icons.pencil.svg(width: 16, height: 16),
              onPressed: onEdit,
            ),
          ),
        ),
      ],
    );
  }
}
