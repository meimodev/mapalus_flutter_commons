import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';
import 'package:mapalus_flutter_commons/widgets/widgets.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({
    super.key,
    required this.imageUrl,
    this.onPressed,
    this.height,
    this.label,
    this.errorText = "",
  });

  final VoidCallback? onPressed;
  final String imageUrl;
  final String? label;
  final double? height;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        label != null
            ? Text(
                label!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: BaseTypography.bodyMedium.toSecondary,
              )
            : const SizedBox(),
        label != null ? Gap.h8 : const SizedBox(),
        Material(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(BaseSize.radiusMd),
          child: InkWell(
            onTap: onPressed,
            child: SizedBox(
              height: height ?? BaseSize.h96,
              child: CustomImage(
                imageUrl: imageUrl,
              ),
            ),
          ),
        ),
        errorText.isEmpty ? const SizedBox() : Gap.h4,
        errorText.isEmpty
            ? const SizedBox()
            : Text(
                errorText,
                maxLines: 1,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: BaseTypography.bodySmall.toError,
              ),
      ],
    );
  }
}
