import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampToDateTimeConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampToDateTimeConverter();

  @override
  DateTime fromJson(dynamic timestamp) {
    return (timestamp as Timestamp).toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}