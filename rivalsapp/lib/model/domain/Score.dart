import 'dart:core';

class Score {
  final String type;
  final int intValue;
  final String strValue;

  Score(this.type, intValue, strValue)
      : this.strValue = strValue ?? '',
        this.intValue = intValue ?? 0;

  String get getType => type;

  int get getIntValue => intValue;

  String get getStrValue => strValue;
}
