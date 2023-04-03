import 'package:flutter/material.dart';
import 'package:flutter_epitas/models/blind.dart';
import 'package:flutter_epitas/models/tournament.dart';
import 'package:provider/provider.dart';
import 'package:flutter_epitas/providers/tournaments_provider.dart';
import 'package:flutter_epitas/widget/tournament_grid.dart';

class TournamentsOverview extends StatelessWidget {
  const TournamentsOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final tournamentsData = Provider.of<TournamentsProvider>(context);
    List<Tournament> tournaments = tournamentsData.tournaments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tournois"),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Tournament newTournament = Tournament(
                    id: "t + ${tournaments.length}",
                    title: "Event #${tournaments.length}");
                newTournament.blinds = [
                  Blind(
                      id: "1",
                      level: 1,
                      timer: const Duration(minutes: 15, seconds: 00),
                      smallBlind: "5",
                      bigBlind: "10"),
                ];
                tournamentsData.addTournament(newTournament);
              },
              icon: const Icon(Icons.add_box),
            ),
          ],
        ),
        body: tournaments.isEmpty
            ? const Center(
                child: Text("No Tournament for the moment"),
              )
            : const TournamentsGrid(),
      ),
    );
  }
}
