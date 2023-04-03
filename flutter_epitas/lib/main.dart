import 'package:flutter/material.dart';
import 'package:flutter_epitas/providers/tournaments_provider.dart';
import 'package:provider/provider.dart';

import 'package:flutter_epitas/screens/tournament_screen.dart';
import 'package:flutter_epitas/screens/tournaments_overview_screen.dart';
import 'package:flutter_epitas/tools/color_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TournamentsProvider(),
      child: MaterialApp(
        title: 'Epit\'As',
        theme: ThemeData(
            primarySwatch: Palette.primarySwatch,
            colorScheme:
                const ColorScheme.dark()), //TODO: Improve the ColorScheme
        home: const TournamentsOverview(),
        routes: {
          //Main Screens
          TournamentScreen.routeName: (context) => const TournamentScreen(),
        },
      ),
    );
  }
}
