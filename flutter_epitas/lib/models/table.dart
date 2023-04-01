import 'package:flutter/foundation.dart';

class Tables {
  final String id;
  final String title;
  final int total_nb_place;
  int place;
  bool is_full;

  Tables({
    required this.id,
    required this.title,
    required this.total_nb_place,
    this.place = 0,
    this.is_full = false,
  });
}
