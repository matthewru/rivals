import 'domain/Rival.dart';
import 'domain/Competiton.dart';
import 'domain/Round.dart';
import 'domain/Score.dart';

class CompetitionModel {
  final Competition competition;

  CompetitionModel(this.competition);

  void addRound(Round round) {
    this.competition.rounds.add(round);
  }

  void updateRound(Round round) {}
  void deleteRound(Round round) {
    this.competition.rounds.remove(round);
  }

  Map<Rival, Score> getResult() {}
}
