import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

// import 'package:palakat/core/assets/assets.dart';
// import 'package:palakat/core/constants/constants.dart';
// import 'package:palakat/core/widgets/divider/divider_widget.dart';

class InputVariantDropdownWidget extends StatefulWidget {
  const InputVariantDropdownWidget({
    super.key,
    required this.hint,
    required this.options,
    required this.currentInputValue,
    required this.onChanged,
    required this.onPressedWithResult,
    this.borderColor,
    this.endIcon,
    this.backgroundColor,
  });

  final String hint;
  final List<String> options;
  final String? currentInputValue;
  final ValueChanged<String> onChanged;
  final Future<String?> Function() onPressedWithResult;
  final IconData? endIcon;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  State<InputVariantDropdownWidget> createState() =>
      _InputVariantDropdownWidgetState();
}

class _InputVariantDropdownWidgetState
    extends State<InputVariantDropdownWidget> {
  String currentValue = "";

  @override
  void initState() {
    super.initState();

    setState(() {});
    if (widget.currentInputValue != null) {
      setState(() {
        currentValue = widget.currentInputValue!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Material(
        clipBehavior: Clip.hardEdge,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(
            BaseSize.radiusLg,
          ),
          side: BorderSide(
            color: widget.borderColor ?? Colors.transparent,
            width: 2,
          ),
        ),
        color: widget.backgroundColor ?? BaseColor.cardBackground1,
        child: InkWell(
          onTap: () async {
            final String? result = await widget.onPressedWithResult();
            if (result != null) {
              setState(() {
                currentValue = result;
              });
              widget.onChanged(result);
            }
          },
          child: Padding(
            padding: EdgeInsets.all(BaseSize.w12),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      currentValue.isEmpty
                          ? widget.hint.capitalizeByWord
                          : currentValue.capitalizeByWord,
                      style: BaseTypography.bodyMedium,
                    ),
                  ),
                  Gap.w8,
                  Container(
                    color: BaseColor.primaryText,
                    width: 2,
                  ),
                  Gap.w8,
                  Icon(
                    widget.endIcon ?? Icons.keyboard_arrow_down_rounded,
                    size: BaseSize.w12,
                  ),
                  // (widget.endIcon ?? Assets.icons.line.chevronDownOutline).svg(
                  //   width: BaseSize.w12,
                  //   height: BaseSize.w12,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
