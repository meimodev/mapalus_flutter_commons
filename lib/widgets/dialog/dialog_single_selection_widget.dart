import 'package:flutter/material.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

import 'dialog_custom_widget.dart';

Future<T?> showSingleSelectionDialogWidget<T>({
  required BuildContext context,
  required String Function(T data) getDisplayText,
  required List<T> items,
  required String title,
}) async {
  return await showDialogCustomWidget<T>(
    context: context,
    title: title,
    scrollControlled: false,
    content: Expanded(
      child: _DialogSingleSelectionWidget<T>(
        items: items,
        getDisplayText: getDisplayText,
        onSelectItem: (T data) {
          Navigator.of(context).pop(data);
        },
      ),
    ),
  );
}

class _DialogSingleSelectionWidget<T> extends StatelessWidget {
  const _DialogSingleSelectionWidget({
    required this.onSelectItem,
    required this.items,
    required this.getDisplayText,
  });

  final void Function(T data) onSelectItem;
  final String Function(T data) getDisplayText;
  final List<T> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const SizedBox();
    }
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
      separatorBuilder: (BuildContext context, int index) => Gap.h12,
      itemBuilder: (BuildContext context, int index) {
        return Material(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(BaseSize.radiusMd),
          color: BaseColor.white,
          child: InkWell(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: BaseSize.h12,
                horizontal: BaseSize.w12,
              ),
              child: Text(
                getDisplayText(items[index]).capitalizeByWord,
                style: BaseTypography.headlineMedium,
              ),
            ),
            onTap: () => onSelectItem(
              items[index],
            ),
          ),
        );
      },
    );
  }
}
