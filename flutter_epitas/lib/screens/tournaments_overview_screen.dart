import 'package:flutter/material.dart';
import 'package:flutter_epitas/models/tournament.dart';
import 'package:flutter_epitas/tools/constant.dart';
import 'package:flutter_epitas/tools/responsive.dart';
import 'package:flutter_epitas/widget/tournament_item.dart';

class TournamentsOverview extends StatelessWidget {
  /*const*/ TournamentsOverview({super.key});
  // TODO : Fix this const shit

  // TODO Add providers etc...
  final List<Tournament> tmp = [
    Tournament(id: "t1", title: "Giant KO"),
    Tournament(id: "t2", title: "180 Max"),
    Tournament(id: "t3", title: "Mystery KO"),
    Tournament(id: "t4", title: "Highroller"),
    Tournament(id: "t5", title: "MonsterStack"),
    Tournament(id: "t6", title: "Kill the fish"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tournois"),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(normalPadding),
          itemCount: tmp.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  !Responsive.isWindows() || Responsive.isSmallSc(context)
                      ? 1
                      : 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, i) => TournamentItem(
            tournament: tmp[i],
          ),
        ),
      ),
    );
  }
}
