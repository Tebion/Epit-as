import 'package:flutter/material.dart';
import 'package:flutter_epitas/models/tournament.dart';
import 'package:flutter_epitas/providers/tournaments_provider.dart';
import 'package:provider/provider.dart';

import 'package:flutter_epitas/tools/constant.dart';
import 'package:flutter_epitas/tools/responsive.dart';
import 'package:flutter_epitas/widget/tournament_item.dart';

class TournamentsGrid extends StatelessWidget {
  const TournamentsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tournamentsData = Provider.of<TournamentsProvider>(context);
    final List<Tournament> tournaments = tournamentsData.tournaments;
    return GridView.builder(
      padding: const EdgeInsets.all(normalPadding),
      itemCount: tournaments.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              !Responsive.isWindows() || Responsive.isSmallSc(context)
                  ? 1
                  : 4, //TODO : Better Looking
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, i) => TournamentItem(
        tournament: tournaments[i],
      ),
    );
  }
}
