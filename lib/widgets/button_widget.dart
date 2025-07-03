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
    this.size,
    this.onLongPressed,
    this.textStyle,
    this.enable = true,
  });

  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final String? text;
  final TextStyle? textStyle;
  final EdgeInsets? padding;

  final Color? backgroundColor;
  final Color? textColor;
  final IconData? icon;

  final double? size;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(BaseSize.radiusMd),
      color: enable
          ? backgroundColor ?? BaseColor.primary3
          : BaseColor.secondaryText.withValues(alpha: .5),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onPressed,
        onLongPress: onLongPressed,
        child: Padding(
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: BaseSize.w16,
                vertical: BaseSize.h8,
              ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                text == null
                    ? const SizedBox()
                    : Text(
                        text!,
                        textAlign: TextAlign.center,
                        style: textStyle ??
                            BaseTypography.button.copyWith(
                              color: enable
                                  ? textColor ?? BaseColor.primaryText
                                  : BaseColor.accent.withValues(alpha: .5),
                            ),
                      ),
                icon == null || text == null ? const SizedBox() : Gap.w8,
                icon == null
                    ? const SizedBox()
                    : Icon(
                        icon!,
                        color: enable
                            ? textColor ?? BaseColor.primaryText
                            : BaseColor.accent,
                        size: size,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
