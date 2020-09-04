import 'dart:core';

import 'package:rivalsapp/model/domain/Rival.dart';

import 'Score.dart';

enum RoundStatus {
  ACTIVE,
  PAST,
}

class Round {
  final String roundId;
  final String compId;
  Map<Rival, Score> outcome;
  RoundStatus status;

  Round(this.roundId, this.compId)
      : this.status = RoundStatus.ACTIVE,
        this.outcome = {};

  RoundStatus get getStatus => this.status;

  set setStatus(RoundStatus status) => this.status = status;

  void setScore(Rival rival, Score score) {
    this.outcome[rival] = score;
  }

  Score getScore(Rival rival) {
    return this.outcome[rival];
  }
}
