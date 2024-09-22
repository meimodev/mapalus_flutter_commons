import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({
    super.key,
    this.value,
    required this.title,
    this.onChange,
    this.backgroundColor,
  });

  final bool? value;
  final String title;
  final void Function(bool?)? onChange;
  final Color? backgroundColor;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool value = false;

  @override
  void initState() {
    super.initState();

    if (widget.value != null) {
      setState(() {
        value = widget.value!;
      });
    }
  }

  void onChange(bool? value) {
    if (value != null) {
      setState(() {
        this.value = !this.value;
      });
    }
    if (widget.onChange != null) {
      widget.onChange!(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      color: widget.backgroundColor ?? BaseColor.cardBackground1,
      borderRadius: BorderRadius.circular(BaseSize.radiusMd),
      child: InkWell(
        onTap: () => onChange(!value),
        child: Row(
          children: [
            Gap.w8,
            Text(
              widget.title,
              style: BaseTypography.caption,
            ),
            Checkbox(
              activeColor: BaseColor.primary3,
              checkColor: BaseColor.accent,
              visualDensity: VisualDensity.comfortable,
              value: value,
              onChanged: onChange,
            ),
          ],
        ),
      ),
    );
  }
}
