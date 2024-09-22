import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

class InputVariantTextWidget extends StatelessWidget {
  const InputVariantTextWidget(
      {super.key,
      this.controller,
      this.onChanged,
      this.maxLines,
      this.hint,
      this.endIcon,
      this.textInputType,
      this.borderColor,
      this.startIcon,
      this.backgroundColor,
        this.currentInputValue,
      });

  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final int? maxLines;
  final String? hint;
  final IconData? endIcon;
  final IconData? startIcon;
  final TextInputType? textInputType;
  final Color? borderColor;
  final Color? backgroundColor;
  final String? currentInputValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: BaseSize.w12),
      decoration: BoxDecoration(
        color: backgroundColor ?? BaseColor.cardBackground1,
        border: Border.all(color: borderColor ?? Colors.transparent),
        borderRadius: BorderRadius.circular(
          BaseSize.radiusMd,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSideIcon(true, startIcon),
          Expanded(child: _buildTextFormFiled()),
          _buildSideIcon(false, endIcon),
        ],
      ),
    );
  }

  Widget _buildTextFormFiled() {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines,
      initialValue: currentInputValue,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hint,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        fillColor: BaseColor.cardBackground1,
      ),
    );
  }

  Widget _buildSideIcon(bool startPosition, IconData? icon) {
    if (icon == null) return const SizedBox();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        startPosition ? const SizedBox() : Gap.w12,
        Icon(icon, size: BaseSize.w12),
        startPosition ? Gap.w12 : const SizedBox(),
      ],
    );
  }
}
