import 'dart:core';
import 'package:rivalsapp/model/domain/Rival.dart';
import 'package:rivalsapp/model/domain/Game.dart';
import 'package:rivalsapp/model/domain/Round.dart';

enum CompetitionStatus {
  ACTIVE,
  CLOSED,
}

class Competition {
  final String compId;
  final Rival self;
  final Rival opponent;
  final Game game;
  final List<Round> rounds;
  final DateTime startTime;
  DateTime endTime;
  CompetitionStatus status;

  Competition(this.compId, this.self, this.opponent, this.game, this.rounds,
      this.startTime)
      : status = CompetitionStatus.ACTIVE;

  String get getCompId => this.compId;

  Rival get getSelf => this.self;

  Rival get getOpponent => this.opponent;

  Game get getGame => this.game;

  List get getRounds => this.rounds;

  CompetitionStatus get getStatus => this.status;

  DateTime get getStartTime => this.startTime;

  DateTime get getEndTime => this.endTime;

  set setEndTime(DateTime time) => this.endTime = time;

  set setStatus(CompetitionStatus status) => this.status = status;

  Round getRoundById(String roundId) {
    var roundsIter = this.rounds.iterator;
    while (roundsIter.moveNext()) {
      if (roundId == roundsIter.current.roundId) {
        return roundsIter.current;
      }
    }
    return null;
  }

  void updateRound(Round round) {
    String id = round.roundId;
    Round found = this.rounds.firstWhere((element) => element.roundId == id);
    int index = this.rounds.indexOf(found);
    this.rounds.replaceRange(index, index + 1, [round]);
  }
}
