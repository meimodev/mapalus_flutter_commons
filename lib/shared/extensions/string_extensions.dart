import '../values.dart';

extension StringExtension on String {
  String get capitalizeByWord {
    if (isEmpty) {
      return "";
    }
    final trimmed = trim();
    if (trimmed.isEmpty) {
      return '';
    }
    if (trimmed.contains(' ')) {
      return trimmed
          .split(' ')
          .map((element) =>
              "${element[0].toUpperCase()}${element.substring(1).toLowerCase()}")
          .join(" ");
    }

    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String get phoneCleanUseZero {
    return contains('+62') ? replaceFirst('+62', '0') : this;
  }

  String get phoneCleanUseCountryCode {
    return substring(0, 1) == "0" ? replaceFirst("0", "+62") : this;
  }

  num formatCurrencyToNumber() {
    if (toLowerCase() == Values.keyFree.toLowerCase()) {
      return 0;
    }
    if (this == "-") {
      return 0;
    }

    return double.parse(
      replaceAll("Rp. ", "").replaceAll(".", ""),
    );
  }
}
