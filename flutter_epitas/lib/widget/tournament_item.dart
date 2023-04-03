import 'package:flutter/material.dart';
import 'package:flutter_epitas/models/tournament.dart';
import 'package:flutter_epitas/screens/tournament_screen.dart';
import 'package:flutter_epitas/tools/color_palette.dart';
import 'package:flutter_epitas/tools/constant.dart';

class TournamentItem extends StatelessWidget {
  final Tournament tournament;
  const TournamentItem({
    super.key,
    required this.tournament,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        TournamentScreen.routeName,
        arguments: {
          'tournament': tournament,
        },
      ),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(normalPadding),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Palette.primarySwatch, Colors.black],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(tournament.title),
      ),
    );
  }
}
