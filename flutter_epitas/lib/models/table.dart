import 'package:flutter_epitas/models/player.dart';

class Table {
  final String id;
  final String title;
  final int totalNbPlace;
  List<Player> players = List.empty(growable: true); //DOUBT
  int place;
  bool isFull;

  Table({
    required this.id,
    required this.title,
    required this.totalNbPlace,
    this.place = 0,
    this.isFull = false,
  });
}
