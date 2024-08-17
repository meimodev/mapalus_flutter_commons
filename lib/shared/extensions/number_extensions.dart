import 'package:intl/intl.dart';

extension ExtensionDouble on num {
  num toUnitMultiplicationOf(num number) {
    if(this == 0) return 0;
    if(number == 0) return 0;
    final result = (this / number).ceil();
    if (result < 1) return 1;
    return result;
  }

  String toStringWithoutPointZeroTrail() {
    final str = toString();
    final isContainPointZeroTrail = str.substring(str.length - 2) == ".0";
    if (isContainPointZeroTrail) {
      return str.substring(0, str.length - 2);
    }
    return str;
  }

  String toKilogram({bool accurate = false}) => accurate
      ? "${(this / 1000).toFormatThousand} Kg"
      : "± ${(this / 1000).ceil().toFormatThousand} Kg";

  String formatNumberToCurrency({bool canBeFree = false}) {
    var number = this;
    if (number <= 0) {
      number = 0;
    }
    if (number == 0) {
      if (canBeFree) {
        return "Gratis";
      }
      return "-";
    }
    var f = NumberFormat('#,###');
    var s = "Rp. ${f.format(number)}".replaceAll(",", ".");
    return s;
  }

  String get toFormatThousand {
    return formatNumberToCurrency().replaceFirst('Rp. ', '');
  }
}
