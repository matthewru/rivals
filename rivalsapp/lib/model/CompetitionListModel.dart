import 'domain/Competiton.dart';

class CompetitionListModel {
  final List<Competition> competitions;

  CompetitionListModel(this.competitions);

  void addCompetition(Competition competition) {
    this.competitions.add(competition);
  }

  void loadCompetitions() {}
  void removeCompetition(Competition competition) {
    this.competitions.remove(competition);
  }

  void updateCompetition(Competition competition) {
    String id = competition.compId;
    Competition found =
        this.competitions.firstWhere((element) => element.compId == id);
    int index = this.competitions.indexOf(found);
    this.competitions.replaceRange(index, index + 1, [competition]);
  }
}
