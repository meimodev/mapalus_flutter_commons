import 'package:intl/intl.dart';

extension ExtensionDouble on num {
  String toStringWithoutPointZeroTrail() {
    final str = toString();
    final isContainPointZeroTrail = str.substring(str.length - 2) == ".0";
    if (isContainPointZeroTrail) {
      return str.substring(0, str.length - 2);
    }
    return str;
  }

  String formatNumberToCurrency({bool canBeFree = false}) {
    var number = this;
    if (number <= 0) {
      number = 0;
    }
    if (number == 0 ) {
      if (canBeFree) {
        return "Gratis";
      }
      return "-";
    }
    var f = NumberFormat('#,###');
    var s = "Rp. ${f.format(number)}".replaceAll(",", ".");
    return s;
  }

  String formatNumberThousandSeparator() {
    return formatNumberToCurrency().replaceFirst('Rp. ', '');
  }
}