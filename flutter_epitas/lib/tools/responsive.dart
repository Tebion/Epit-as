//Dart
import 'dart:io';

//Package
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget small;
  final Widget medium;
  final Widget large;
  final Widget extraLarge;

  const Responsive({
    super.key,
    required this.small,
    required this.medium,
    required this.large,
    required this.extraLarge,
  });

  // => Permet de savoir sur quel OS on se trouve.

  // * Chrome étant mauvais il ne gère pas les commandes Platform.abc
  // * et donc renvoie une erreur derrière.

  static bool isAndroid() {
    try {
      return Platform.isAndroid;
    } catch (error) {
      return false;
    }
  }

  static bool isiOS() {
    try {
      return Platform.isIOS;
    } catch (error) {
      return false;
    }
  }

  static bool isWindows() {
    return !isiOS() && !isAndroid();
  }

  // => Permet de savoir sur quel platforme est ce que l'on se trouve.

  // * Small == Téléphone
  static bool isSmallSc(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  // * Medium == Tablette
  static bool isMediumSc(BuildContext context) =>
      MediaQuery.of(context).size.width < 1250 &&
      MediaQuery.of(context).size.width >= 850;

  // * Large == P.C
  static bool isLargeSc(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1250 &&
      MediaQuery.of(context).size.width < 1900;

  // * ExtraLarge == Fullscreen Windows
  static bool isExtraLargeSc(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1900;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1900) {
      return extraLarge;
    }
    // Supérieur à 1100 px => P.C
    if (size.width >= 1250) {
      return large;
    }
    // Supérieur à 850 px => tablette
    else if (size.width >= 850) {
      return medium;
    }
    // Sinon téléphone
    else {
      return small;
    }
  }
}
