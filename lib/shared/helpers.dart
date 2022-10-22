extension E on String{
  String phoneCleanUseZero(){
    return contains('+62') ? replaceFirst('+62', '0') : this;
  }
  String phoneCleanUseCountryCode(){
    return substring(0,1) == "0" ? replaceFirst("0", "+62") : this;
  }
}

