import 'package:freezed_annotation/freezed_annotation.dart';

class StringHourToDateTimeConverter
    implements JsonConverter<DateTime, String> {
  const StringHourToDateTimeConverter();

  @override
  DateTime fromJson(String hour) {
    final List<String> times = hour.split(":");
    final now = DateTime.now();
    return DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(times[0]),
      int.parse(times[1]),
    );
  }

  @override
  String toJson(DateTime date) => "${date.hour}:${date.minute}";
}
