import 'package:flutter_epitas/models/table.dart';

class Tournament {
  final String id;
  final String title;

  List<Table> tables = List.empty(growable: true); //DOUBT

  Tournament({
    required this.id,
    required this.title,
  });
}
