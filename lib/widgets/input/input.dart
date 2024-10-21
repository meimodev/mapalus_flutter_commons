import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

import 'input_variant_binary_option_widget.dart';
import 'input_variant_dropdown_widget.dart';
import 'input_variant_text_widget.dart';

enum InputWidgetVariant {
  text,
  dropdown,
  binaryOption,
}

class InputWidget extends StatefulWidget {
  const InputWidget.text({
    super.key,
    this.maxLines = 1,
    this.hint,
    this.label,
    this.onChanged,
    this.controller,
    this.currentInputValue,
    this.endIcon,
    this.startIcon,
    this.textInputType,
    this.borderColor,
    this.errorText,
    this.backgroundColor,
    this.autoValidateMode = AutovalidateMode.always,
    this.validators,
  })  : onPressedWithResult = null,
        options = null,
        variant = InputWidgetVariant.text;

  const InputWidget.dropdown({
    super.key,
    required this.label,
    required this.hint,
    this.onChanged,
    required this.onPressedWithResult,
    this.currentInputValue,
    this.options,
    this.endIcon,
    this.startIcon,
    this.errorText,
    this.backgroundColor,
    this.autoValidateMode = AutovalidateMode.always,
    this.validators,
  })  : controller = null,
        maxLines = 1,
        textInputType = null,
        borderColor = null,
        variant = InputWidgetVariant.dropdown;

  const InputWidget.binaryOption({
    super.key,
    required this.options,
    required this.label,
    required this.onChanged,
    this.currentInputValue,
    this.errorText,
    this.autoValidateMode = AutovalidateMode.always,
    this.validators,
    this.backgroundColor,
  })  : variant = InputWidgetVariant.binaryOption,
        endIcon = null,
        startIcon = null,
        maxLines = null,
        hint = null,
        controller = null,
        onPressedWithResult = null,
        borderColor = null,
        textInputType = null,
        assert(options != null && options.length > 0,
            "options cannot be null or empty");

  final int? maxLines;
  final String? hint;
  final String? label;
  final InputWidgetVariant variant;
  final void Function(String value)? onChanged;
  final String? errorText;

  //variant text
  final TextEditingController? controller;
  final IconData? endIcon;
  final IconData? startIcon;
  final Color? borderColor;
  final Color? backgroundColor;
  final Future<String?> Function()? onPressedWithResult;
  final String? currentInputValue;
  final List<String>? options;
  final TextInputType? textInputType;

  final AutovalidateMode? autoValidateMode;
  final String? Function(String)? validators;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  String errorMessage = '';
  final Debounce debounce = Debounce(const Duration(milliseconds: 400));

  @override
  void initState() {
    super.initState();
    setState(() {
      errorMessage = widget.errorText ?? "";
    });
  }

  void validateInput(String input) {
    if (widget.validators != null) {
      final validators = widget.validators!;
      final res = validators(input) ?? "";
      setState(() {
        errorMessage = res;
      });
    }
  }

  void onChanged(String val) {
    debounce.call(() {
      validateInput(val);
      if (widget.onChanged != null) {
        widget.onChanged!(val);
      }
    });
  }

  Color? get borderColor => errorMessage.isNotEmpty
      ? BaseColor.error.withOpacity(.5)
      : widget.borderColor;

  @override
  Widget build(BuildContext context) {
    String? currentInputValue = widget.currentInputValue;
    if (widget.textInputType == TextInputType.number) {
      if (widget.currentInputValue != null) {
        if (widget.currentInputValue!.startsWith("0")) {
          currentInputValue = null;
        }
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildLabelWidget(),
        widget.variant == InputWidgetVariant.binaryOption
            ? InputVariantBinaryOptionWidget(
                options: widget.options!,
                currentInputValue: widget.currentInputValue,
                onChanged: onChanged,
                borderColor: borderColor,
                backgroundColor: widget.backgroundColor,
              )
            : const SizedBox(),
        widget.variant == InputWidgetVariant.dropdown
            ? InputVariantDropdownWidget(
                hint: widget.hint!,
                options: widget.options ?? [],
                currentInputValue: widget.currentInputValue,
                onChanged: onChanged,
                onPressedWithResult: widget.onPressedWithResult!,
                endIcon: widget.endIcon,
                borderColor: borderColor,
                backgroundColor: widget.backgroundColor,
              )
            : const SizedBox(),
        widget.variant == InputWidgetVariant.text
            ? InputVariantTextWidget(
                onChanged: onChanged,
                maxLines: widget.maxLines,
                hint: widget.hint,
                controller: widget.controller,
                endIcon: widget.endIcon,
                textInputType: widget.textInputType,
                borderColor: borderColor,
                backgroundColor: widget.backgroundColor,
                currentInputValue: currentInputValue,
                // autoValidateMode: widget.autoValidateMode,
                // validators: widget.validators,
              )
            : const SizedBox(),
        _buildErrorWidget(),
      ],
    );
  }

  Widget _buildLabelWidget() {
    if (widget.label == null || widget.label!.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.label!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: BaseTypography.bodySmall.toSecondary,
        ),
        Gap.h6,
      ],
    );
  }

  Widget _buildErrorWidget() {
    if (errorMessage.isEmpty) {
      return const SizedBox();
    }

    return Padding(
      padding: EdgeInsets.only(
        top: BaseSize.customHeight(3),
      ),
      child: Text(
        errorMessage,
        maxLines: 1,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: BaseTypography.bodySmall.toError,
      ),
    );
  }
}
