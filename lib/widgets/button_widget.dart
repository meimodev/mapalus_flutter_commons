import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.onPressed,
    required this.text,
    this.padding,
  });

  final VoidCallback? onPressed;
  final String text;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(BaseSize.radiusMd),
      color: BaseColor.primary3,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: BaseSize.w16,
                vertical: BaseSize.h8,
              ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: BaseTypography.button,
          ),
        ),
      ),
    );
  }
}
