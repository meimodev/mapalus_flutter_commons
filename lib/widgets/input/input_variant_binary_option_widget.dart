import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

class InputVariantBinaryOptionWidget extends StatefulWidget {
  const InputVariantBinaryOptionWidget({
    super.key,
    required this.options,
    this.currentInputValue,
    required this.onChanged,
    this.borderColor,
    this.backgroundColor,
  });

  final List<String> options;
  final String? currentInputValue;
  final ValueChanged<String> onChanged;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  State<InputVariantBinaryOptionWidget> createState() =>
      _InputVariantBinaryOptionWidgetState();
}

class _InputVariantBinaryOptionWidgetState
    extends State<InputVariantBinaryOptionWidget> {
  String active = "";

  @override
  void initState() {
    super.initState();

    if (widget.currentInputValue != null) {
      setState(() {
        active = widget.currentInputValue!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widget.options
          .map(
            (e) => Expanded(
              child: Material(
                clipBehavior: Clip.hardEdge,
                shape: ContinuousRectangleBorder(
                  side: BorderSide(
                    color: widget.borderColor ?? Colors.transparent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: e == widget.options.first
                        ? Radius.circular(BaseSize.radiusLg * 2)
                        : Radius.zero,
                    topLeft: e == widget.options.first
                        ? Radius.circular(BaseSize.radiusLg * 2)
                        : Radius.zero,
                    bottomRight: e == widget.options.last
                        ? Radius.circular(BaseSize.radiusLg * 2)
                        : Radius.zero,
                    topRight: e == widget.options.last
                        ? Radius.circular(BaseSize.radiusLg * 2)
                        : Radius.zero,
                  ),
                ),
                color: e == active
                    ? BaseColor.primary3
                    : widget.backgroundColor ?? BaseColor.cardBackground1,
                child: InkWell(
                  onTap: e == active
                      ? null
                      : () {
                          setState(() {
                            active = e;
                          });
                          widget.onChanged(e);
                        },
                  child: Container(
                    padding: EdgeInsets.all(
                      BaseSize.w12,
                    ),
                    child: Center(
                      child: Text(
                        e,
                        style: BaseTypography.bodyMedium.copyWith(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
