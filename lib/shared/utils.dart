import 'dart:math';

class Utils {

  /// Result in Kilometer
  static double calculateDistance({
    required double pos1Latitude,
    required double pos1Longitude,
    required double pos2Latitude,
    required double pos2Longitude,
  }) {
    double lat1 = pos1Latitude;
    double lat2 = pos2Latitude;

    double lon1 = pos1Longitude;
    double lon2 = pos2Longitude;

    var earthRadius = 6372.8; // in KiloMeters
    double dLat = (lat2 - lat1) * pi / 180;
    double dLon = (lon2 - lon1) * pi / 180;
    lat1 = lat1 * pi / 180;
    lat2 = lat2 * pi / 180;
    double a =
        pow(sin(dLat / 2), 2) + pow(sin(dLon / 2), 2) * cos(lat1) * cos(lat2);
    double c = 2 * asin(sqrt(a));
    return earthRadius * c;
  }

  static double roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }
}