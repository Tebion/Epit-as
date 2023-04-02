class Player {
  final String id;
  final String name;
  final String familyName;
  final String email;
  String phoneNumber;

  Player({
    required this.id,
    required this.email,
    required this.name,
    required this.familyName,
    this.phoneNumber = '',
  });
}
