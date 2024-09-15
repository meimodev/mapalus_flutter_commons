import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

class ChipCategory extends StatelessWidget {
  const ChipCategory({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: BaseSize.w8,
        vertical: BaseSize.h4,
      ),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: BaseColor.accent,
        borderRadius: BorderRadius.circular(BaseSize.radiusSm),
      ),
      child: Text(
        category,
        style: BaseTypography.labelSmall.toBold.toPrimary,
      ),
    );
  }
}
