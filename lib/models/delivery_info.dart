import 'dart:developer' as dev;

import 'package:jiffy/jiffy.dart';

import '../shared/shared.dart';
import 'pricing_modifier.dart';

class DeliveryInfo {
  String id;
  final String _start;
  final String _end;
  bool available;
  final String _discount;
  PricingModifier pricingModifier;

  DeliveryInfo({
    required start,
    required end,
    required discount,
    required this.id,
    required this.available,
    required this.pricingModifier,
  })  : _start = start,
        _end = end,
        _discount = discount;

  factory DeliveryInfo.fromJSON(Map<String, dynamic> json) => DeliveryInfo(
        id: json["id"],
        start: json["start"],
        end: json["end"],
        available: json["available"],
        discount: json['discount'],
        pricingModifier: PricingModifier.fromJson(json),
      );

  // final List<double> weightMilestones = [5.0, 7.0, 9.0, 11.0];

  String get currentDate => Jiffy.now().format(pattern: "dd/MM/yyyy");

  Jiffy get startDate {
    var res = Jiffy.parse("$_start $currentDate", pattern: "HH:mm dd/MM/yyyy");
    return res;
  }

  Jiffy get endDate {
    var res = Jiffy.parse("$_end $currentDate", pattern: "HH:mm dd/MM/yyyy");
    return res;
  }

  bool get isTomorrow {
    if (id == "NOW") {
      return !Jiffy.now().isBetween(startDate, endDate);
    }
    return Jiffy.now().isAfter(startDate);
  }

  String get title {
    // print('is tomorrow = $isTomorrow, '
    //     'startDate = ${startDate.format("E, dd MMMM HH:mm")} '
    //     'endDate = ${endDate.format("E, dd MMMM HH:mm")} '
    //     'now = ${Jiffy().format("E, dd MMMM HH:mm")} '
    //     'isAvailable = $available}');
    if (id == "NOW") {
      return "Sekarang";
    }

    String timeOfTheDay = '';
    int startHour = startDate.hour;
    if (startHour > 0 && startHour < 10) {
      timeOfTheDay = "Pagi";
    } else if (startHour >= 10 && startHour < 13) {
      timeOfTheDay = "Siang";
    } else if (startHour >= 13 && startHour < 17) {
      timeOfTheDay = "Sore";
    } else if (startHour > 17) {
      timeOfTheDay = "Malam";
    }
    return "Pukul ${startDate.hour} - ${endDate.hour} $timeOfTheDay";
  }

  bool get isAvailable {
    if (id == "NOW") {
      return !isTomorrow && available;
    }
    return available;
  }

  double get discount {
    return double.parse(_discount);
  }

  String price({required double distance, required double weight}) {
    weight = weight / 1000;

    /*Default price modifier */

    final perDistancePrice = pricingModifier.distancePrice;
    final perWeightPrice = pricingModifier.weightPrice;
    final perDistanceUnit = pricingModifier.distanceUnit;
    final perWeightUnit = pricingModifier.weightUnit;

    double fee = 0;

    final calculatedDistanceUnit = (distance / perDistanceUnit).ceil();
    final distanceUnit =
        calculatedDistanceUnit <= 0 ? 1 : calculatedDistanceUnit;
    final calculatedWeightUnit = (weight / perWeightUnit).ceil();
    final weightUnit = calculatedWeightUnit <= 0 ? 1 : calculatedWeightUnit;

    dev.log(
        "distanceUnit $distance / $perDistanceUnit = $distanceUnit unit ceil() | weightUnit $weight / $perWeightUnit = $weightUnit unit ceil()");

    //based on distance
    fee = (distanceUnit * perDistancePrice) + (weightUnit * perWeightPrice);

    var res = ((fee / 1000) * discount).round() * 1000;
    if (res <= 0) {
      res = 0;
    }
    return res.formatNumberToCurrency(canBeFree: true);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryInfo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          _start == other._start &&
          _end == other._end &&
          available == other.available &&
          _discount == other._discount;

  @override
  int get hashCode =>
      id.hashCode ^
      _start.hashCode ^
      _end.hashCode ^
      available.hashCode ^
      _discount.hashCode;

  @override
  String toString() {
    return 'DeliveryInfo{id: $id, _start: $_start, _end: $_end, '
        'available: $available, _discount: $_discount}';
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "start": _start,
      "end": _end,
      "available": available,
      "discount": _discount,
    };
  }
}
