import 'dart:core';

class CompetitionEntity {
  final String compId;
  final String selfId;
  final String opponentId;
  final String gameId;
  final String startTime;
  String endTime;
  String status;

  CompetitionEntity(this.compId, this.selfId, this.opponentId, this.gameId,
      this.startTime, status)
      : this.status = 'ACTIVE';

  String get getCompId => compId;

  String get getSelfId => selfId;

  String get getOpponentId => opponentId;

  String get getGameId => gameId;

  String get getStartTime => startTime;

  String get getEndTime => endTime;

  set setEndTime(String endTime) => this.endTime = endTime;

  String get getStatus => status;

  set setStatus(String status) => this.status = status;
}
