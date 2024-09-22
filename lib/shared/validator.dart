class Validator {
  final String value;
  final String name;
  String message;

  static int errorCount = 0;

  Validator({
    required this.value,
    required this.name,
    this.message = "",
  });

  Validator notEmptyOrZero() {
    if (value.isEmpty) {
      message = "$name Tidak bisa kosong";
    }
    if (value.startsWith('0')) {
      message = "$name Tidak bisa 0";
    }
    return this;
  }

  Validator notMoreThan(int character) {
    if (value.length > character) {
      message = "$name Tidak lebih dari $character karakter";
    }
    return this;
  }

  Validator notLessThan(int character) {
    if (value.length < character) {
      message = "$name Tidak kurang dari $character karakter";
    }
    return this;
  }

  Validator isNumber() {
    if (double.tryParse(value) == null) {
      message = "$name harus berupa angka yang valid 0-9";
    }
    return this;
  }

  String validate() {
    if (message.isNotEmpty) {
      errorCount++;
    }

    return message;
  }

  static void resetErrorCounter() {
    errorCount = 0;
  }
}
