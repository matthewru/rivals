import 'domain/Game.dart';

class GameListModel {
  final List<Game> games;

  GameListModel(this.games);

  void addGame(Game game) {
    this.games.add(game);
  }

  void loadgames() {}
  void removegame(Game game) {
    this.games.remove(game);
  }

  void updategame(Game game) {
    String id = game.id;
    Game found = this.games.firstWhere((element) => element.id == id);
    int index = this.games.indexOf(found);
    this.games.replaceRange(index, index + 1, [game]);
  }
}
