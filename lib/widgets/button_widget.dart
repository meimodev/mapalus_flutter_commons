import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.onPressed,
    this.text,
    this.padding,
    this.backgroundColor,
    this.textColor,
    this.icon,
  });

  final VoidCallback? onPressed;
  final String? text;
  final EdgeInsets? padding;

  final Color? backgroundColor;
  final Color? textColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(BaseSize.radiusMd),
      color: backgroundColor ?? BaseColor.primary3,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: BaseSize.w16,
                vertical: BaseSize.h8,
              ),
          child: Column(
            children: [
              text == null
                  ? const SizedBox()
                  : Text(
                      text!,
                      textAlign: TextAlign.center,
                      style: BaseTypography.button.copyWith(
                        color: textColor ?? BaseColor.primaryText,
                      ),
                    ),
              icon == null
                  ? const SizedBox()
                  : Icon(
                      icon!,
                      color: textColor ?? BaseColor.primaryText,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
