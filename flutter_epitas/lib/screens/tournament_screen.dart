import 'package:flutter/material.dart';
import 'package:flutter_epitas/models/tournament.dart';

class TournamentScreen extends StatelessWidget {
  static const String routeName = "/tournament_screen";
  const TournamentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    Tournament tournament = routeArgs['tournament'] as Tournament;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(tournament.title),
        ),
        body: const Center(
          child: Text("Details of the tournament"),
        ),
      ),
    );
  }
}
