import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

Future<T?> showDialogCustomWidget<T>({
  required BuildContext context,
  required String title,
  required Widget content,
  bool scrollControlled = true,
  bool dismissible = true,
  bool dragAble = true,
  VoidCallback? onPopBottomSheet,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: scrollControlled,
    isDismissible: dismissible,
    enableDrag: dragAble,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(BaseSize.customRadius(BaseSize.radiusMd)),
      ),
    ),
    builder: (context) => Padding(
      padding: EdgeInsets.symmetric(horizontal: BaseSize.w12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap.h24,
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: BaseTypography.bodyMedium,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  if (onPopBottomSheet != null) {
                    onPopBottomSheet.call();
                  }
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          Gap.h16,
          content,
          Gap.h48,
        ],
      ),
    ),
  );
}
