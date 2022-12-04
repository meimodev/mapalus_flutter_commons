class Rating {
  int number;
  String message;

  Rating(
    this.number,
    this.message,
  );

  Rating.zero()
      : number = 0,
        message = '';

  Rating.fromMap(Map<String, dynamic> data)
      : number = data["number"],
        message = data["message"];

  Map<String, dynamic> toMap() {
    return {
      "number": number,
      "message": message,
    };
  }

  @override
  String toString() {
    return 'Rating{number: $number, message: $message}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Rating &&
          runtimeType == other.runtimeType &&
          number == other.number &&
          message == other.message;

  @override
  int get hashCode => number.hashCode ^ message.hashCode;
}
