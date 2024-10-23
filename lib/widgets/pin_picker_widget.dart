import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';
import 'package:pinput/pinput.dart';

class PinPickerWidget extends StatelessWidget {
  const PinPickerWidget({
    super.key,
    this.errorText,
    this.controller,
    required this.onCompletedPin,
    required this.label,
  });

  final void Function(String value) onCompletedPin;
  final String? errorText;
  final String label;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Gap.h24,
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: BaseTypography.bodySmall.toSecondary,
        ),
        Gap.h6,
        Pinput(
          controller: controller,
          autofocus: true,
          keyboardType: TextInputType.number,
          defaultPinTheme: PinTheme(
            textStyle: BaseTypography.bodyMedium.toBold,
            padding: EdgeInsets.symmetric(
              vertical: BaseSize.h12,
              horizontal: BaseSize.w12,
            ),
            decoration: BoxDecoration(
              color: BaseColor.editable,
              border: Border.all(color: BaseColor.primary3),
              borderRadius: BorderRadius.circular(BaseSize.radiusMd),
            ),
          ),
          length: 6,
          onCompleted: onCompletedPin,
        ),
        errorText == null ? const SizedBox() : Gap.h6,
        errorText == null
            ? const SizedBox()
            : Text(
                errorText!,
                style: BaseTypography.bodySmall.toNegative,
                textAlign: TextAlign.center,
              ),
        Gap.h12,
      ],
    );
  }
}
