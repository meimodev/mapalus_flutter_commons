// ignore_for_file: non_constant_identifier_names

import 'package:jiffy/jiffy.dart';

extension XDateTime on DateTime {
  Jiffy get toJiffy => Jiffy.parseFromDateTime(this);

  String toStringFormatted(String format) {
    return toJiffy.format(pattern: format);
  }

  bool isSameDay(DateTime dateTime) {
    return toJiffy.isSame(
      dateTime.toJiffy,
      unit: Unit.day,
    );
  }

  bool isOnThisWeek(DateTime dateTime) {
    return dateTime.toJiffy.isBetween(
      toJiffy.startOf(Unit.week),
      toJiffy.endOf(Unit.week),
    );
  }

  DateTime get toStartOfTheWeek {
    return generateThisWeekDates.first;
  }

  DateTime get toEndOfTheWeek {
    return generateThisWeekDates.last;
  }

  DateTime get toStartOfTheDay {
    return toJiffy.startOf(Unit.day).dateTime;
  }

  DateTime get toEndOfTheDay {
    return toJiffy.endOf(Unit.day).dateTime;
  }

  DateTime get toStartOfTheYear {
    return toJiffy.startOf(Unit.year).dateTime;
  }

  /// 24/01/2002
  String get slashDate {
    return toStringFormatted('dd/MM/yyyy');
  }

  /// Senin, 24 Januari 2024
  String get EEEEddMMMyyyy {
    return toStringFormatted('EEEE, dd MMMM yyyy');
  }

  /// Sen, 24 Jan 2024
  String get EddMMMyyyy {
    return toStringFormatted('E, dd MMMM yyyy');
  }

  /// Senin, 24 Januari
  String get EEEEddMMM {
    return toStringFormatted('EEEE, dd MMMM');
  }

  /// S, 24 Jan 14:31
  String get EddMMMHHmm {
    return toStringFormatted('E, dd MMM HH:mm');
  }

  bool get isPassed {
    return toJiffy.isSameOrBefore(Jiffy.now());
  }

  List<DateTime> get generateThisWeekDates {
    return [
      ...List.generate(
        1,
        (index) => toJiffy.startOf(Unit.day).dateTime.subtract(
              Duration(days: index + 1),
            ),
      ).reversed,
      ...List.generate(
        6,
        (index) => toJiffy.startOf(Unit.day).dateTime.add(
              Duration(days: index),
            ),
      ),
    ];
  }

  //
  // String get yyyMMdd {
  //   return DateFormat('yyyy-MM-dd').format(this);
  // }
  //
  // String get mMddyyy {
  //   return DateFormat('MMM, dd yyyy').format(this);
  // }
  //
  /// 10 December 2019
  String get ddMmmmYyyy {
    return toStringFormatted('dd MMMM yyyy');
  }

  /// 10 December 2019
  String get ddMmmm {
    return toStringFormatted('dd MMMM');
  }

  //
  // String get mmmddyyy {
  //   return DateFormat('MMM dd, yy').format(this);
  // }
  //
  // String get hhMmAa {
  //   return DateFormat('HH:mm aa').format(this);
  // }
  //

  /// 15:33
  String get HHmm {
    return toStringFormatted('HH:mm');
  }

  //
  // String get mMMMddyyy {
  //   return DateFormat('MMMM dd, yyyy').format(this);
  // }
  //
  // String get mMMYyyy {
  //   return DateFormat('MMMM, yyyy').format(this);
  // }
  //
  // /// Tuesday, 10 Dec 2019
  // String get eeeeDMmmYyyy {
  //   return DateFormat('EEEE, d MMM yyyy').format(this);
  // }
  //
  // /// 10 Dec 2019 15:00
  // String get dMmmYyyyHhMm {
  //   return DateFormat('d MMM yyyy HH:mm').format(this);
  // }
  //
  // /// Thu, 10 Dec 2019 | 15:00
  // String get eeeDMmmYyyyHhMm {
  //   return DateFormat('EEE, MMMM d yyyy | HH:mm').format(this);
  // }
  //

  DateTime addDay({int days = 0}) {
    return add(Duration(days: days));
  }

  DateTime setTime(String timeString) {
    // Parse the time string to get hours and minutes
    List<String> parts = timeString.split(":");
    int hours = int.parse(parts[0]);
    int minutes = int.parse(parts[1]);

    // Create a new DateTime with the same date and the specified time
    DateTime newDateTime = DateTime(
      year,
      month,
      day,
      hours,
      minutes,
    );

    return newDateTime;
  }

  DateTime setHour(int newHour, {bool isMinuteZero = false}) {
    return DateTime(
      year,
      month,
      day,
      newHour,
      isMinuteZero ? 0 : minute,
      isMinuteZero ? 0 : second,
      isMinuteZero ? 0 : millisecond,
      isMinuteZero ? 0 : microsecond,
    );
  }

  String get timeZoneLabel {
    switch (timeZoneOffset.inHours) {
      case 7:
        return "WIB";
      case 8:
        return "WITA";
      case 9:
        return "WIT";
      default:
        return timeZoneName;
    }
  }
}

// extension XDateTimeRange on DateTimeRange {
//   String toLabel({bool isShowTz = false}) {
//     final startClock = "${start.hour.toTwoDigits}:${start.minute.toTwoDigits}";
//     final endClock = "${end.hour.toTwoDigits}:${end.minute.toTwoDigits}";
//     final tzLabel = isShowTz ? "(${start.timeZoneLabel})" : "";
//
//     return "$startClock - $endClock $tzLabel";
//   }
// }
