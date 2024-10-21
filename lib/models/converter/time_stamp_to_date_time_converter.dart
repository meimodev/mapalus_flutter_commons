import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

class TimestampToDateTimeConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampToDateTimeConverter();

  @override
  DateTime fromJson(dynamic timestamp) {
    if (timestamp == null) {
      return DateTime(2024, 1, 1, 1, 1, 1);
    }

    if (timestamp is Timestamp) {
      return timestamp.toDate();
    }

    if (timestamp is Map) {
      return Timestamp(
        timestamp["seconds"],
        timestamp["nanoseconds"],
      ).toDate();
    }

    if (timestamp is String) {
      if (timestamp.contains("seconds")) {
        return Timestamp(
          int.parse(
            timestamp.getStringBetween("seconds=", ","),
          ),
          int.parse(
            timestamp.getStringBetween("nanoseconds=", ")"),
          ),
        ).toDate();
      }
      return DateTime.parse(timestamp);
    }

    if (timestamp is DateTime) {
      return timestamp;
    }

    return (timestamp as Timestamp).toDate();
  }

  @override
  dynamic toJson(DateTime date) => date;
}
