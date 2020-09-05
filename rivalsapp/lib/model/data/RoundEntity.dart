import 'dart:core';

class Round {
  final String roundId;
  final String compId;
  String selfScore;
  String opponentScore;
  String status;

  Round(this.roundId, this.compId, selfScore, opponentScore, status)
      : selfScore = '0',
        opponentScore = '0',
        status = 'ACTIVE';

  String get getRoundId => roundId;

  String get getCompId => compId;

  String get getSelfScore => selfScore;

  set setSelfScore(String selfScore) => this.selfScore = selfScore;

  String get getOpponentScore => opponentScore;

  set setOpponentScore(String opponentScore) =>
      this.opponentScore = opponentScore;

  String get getStatus => status;

  set setStatus(String status) => this.status = status;
}
