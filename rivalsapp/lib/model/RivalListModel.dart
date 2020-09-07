import 'domain/Rival.dart';

class RivalListModel {
  final List<Rival> rivals;

  RivalListModel(this.rivals);

  void addRival(Rival rival) {
    this.rivals.add(rival);
  }

  void loadRivals() {}
  void removeRival(Rival rival) {
    this.rivals.remove(rival);
  }

  void updateRival(Rival rival) {
    String id = rival.id;
    Rival found = this.rivals.firstWhere((element) => element.id == id);
    int index = this.rivals.indexOf(found);
    this.rivals.replaceRange(index, index + 1, [rival]);
  }
}
