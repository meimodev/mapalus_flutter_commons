import '../values.dart';

extension StringExtension on String {
  String capitalizeByWord() {
    if (trim().isEmpty) {
      return '';
    }
    return split(' ')
        .map((element) =>
            "${element[0].toUpperCase()}${element.substring(1).toLowerCase()}")
        .join(" ");
  }

  String phoneCleanUseZero() {
    return contains('+62') ? replaceFirst('+62', '0') : this;
  }

  String phoneCleanUseCountryCode() {
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
