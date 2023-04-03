import 'package:flutter/material.dart';
import 'package:flutter_epitas/models/tournament.dart';

class TournamentsProvider with ChangeNotifier {
  final List<Tournament> _tournaments = [];

  List<Tournament> get tournaments {
    return [..._tournaments];
  }

  void addTournament(Tournament newTournament) {
    _tournaments.add(newTournament);
    notifyListeners();
  }
}
