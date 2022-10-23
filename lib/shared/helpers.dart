extension E on String{
  String phoneCleanUseZero(){
    return contains('+62') ? replaceFirst('+62', '0') : this;
  }
  String phoneCleanUseCountryCode(){
    return substring(0,1) == "0" ? replaceFirst("0", "+62") : this;
  }
}

extension T on double {
  String toStringWithoutPointZeroTrail() {
    final str = toString();
    final isContainPointZeroTrail = str.substring(str.length - 2) == ".0";
    if (isContainPointZeroTrail) {
      return str.substring(0, str.length - 2);
    }
    return str;
  }
}