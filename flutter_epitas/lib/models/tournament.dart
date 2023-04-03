import 'package:flutter_epitas/models/blind.dart';
import 'package:flutter_epitas/models/table.dart';

class Tournament {
  final String id;
  final String title;
  final int currentBlind;

  List<Table> tables = List.empty(growable: true); //DOUBT
  List<Blind> blinds = List.empty(growable: true);

  Tournament({
    required this.id,
    required this.title,
    this.currentBlind = 0,
  });
}
