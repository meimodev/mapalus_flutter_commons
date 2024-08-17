import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

class InputVariantTextWidget extends StatelessWidget {
  const InputVariantTextWidget({
    super.key,
    this.controller,
    this.onChanged,
    this.maxLines,
    this.hint,
    this.endIcon,
    this.textInputType,
    this.borderColor,
  });

  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final int? maxLines;
  final String? hint;
  final IconData? endIcon;
  final TextInputType? textInputType;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: BaseSize.w12),
      decoration: BoxDecoration(
        color: BaseColor.cardBackground1,
        border: Border.all(color: borderColor ?? Colors.transparent),
        borderRadius: BorderRadius.circular(
          BaseSize.radiusMd,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: _buildTextFormFiled()),
          endIcon == null ? const SizedBox() : _buildEndIcon(),
        ],
      ),
    );
  }

  Widget _buildTextFormFiled() {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hint,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        fillColor: BaseColor.cardBackground1,
      ),
    );
  }

  Widget _buildEndIcon() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap.w12,
        Icon(endIcon, size: BaseSize.w12),
      ],
    );
  }
}
