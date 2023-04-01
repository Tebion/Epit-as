import 'package:flutter/foundation.dart';

class Player {
  final String id;
  final String name;
  final String family_name;
  final String email;
  String phone_number;

  Player({
    required this.id,
    required this.email,
    required this.name,
    required this.family_name,
    this.phone_number = '',
  });
}
