import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';
import 'package:mapalus_flutter_commons/widgets/widgets.dart';

Future<bool?> showSimpleConfirmationDialogWidget({
  required BuildContext context,
  required String action,
  VoidCallback? onPressedPositive,
}) async {
  return await showDialogCustomWidget(
    context: context,
    title: "Perhatian !!!",
    scrollControlled: true,
    content: _DialogSimpleConfirmationWidget(
      action: action,
      onPressedPositive: () {
        Navigator.pop(context, true);
        onPressedPositive?.call();
      },
    ),
  );
}

class _DialogSimpleConfirmationWidget extends StatelessWidget {
  const _DialogSimpleConfirmationWidget({
    required this.action,
    required this.onPressedPositive,
  });

  final String action;
  final VoidCallback onPressedPositive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.warning_amber_rounded,
              color: BaseColor.negative,
            ),
            Gap.w4,
            Text(
              "Sentuh \"Lanjutkan\" untuk $action?",
              textAlign: TextAlign.center,
              style: BaseTypography.bodySmall,
            ),
          ],
        ),
        Gap.h12,
        ButtonWidget(
          text: "Lanjut",
          padding: EdgeInsets.symmetric(
            horizontal: BaseSize.w24,
            vertical: BaseSize.h6,
          ),
          backgroundColor: BaseColor.primary3,
          textColor: BaseColor.white,
          onPressed: onPressedPositive,
        ),
      ],
    );
  }
}
