import 'dart:math';
import 'dart:async';


class Utils {

  ///[INFO] Result in Kilometer
  static double calculateDistance({
    required double originLatitude,
    required double originLongitude,
    required double destinationLatitude,
    required double destinationLongitude,
  }) {
    double lat1 = originLatitude;
    double lat2 = destinationLatitude;

    double lon1 = originLongitude;
    double lon2 = destinationLongitude;

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


class Debounce {
  Duration delay;
  Timer? _timer;

  Debounce(this.delay);

  call(void Function() callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  dispose() {
    _timer?.cancel();
  }
}
