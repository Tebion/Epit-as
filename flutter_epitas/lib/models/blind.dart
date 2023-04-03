class Blind {
  final String id;
  final int level;
  final Duration timer;
  final bool reEntry;

  final String smallBlind;
  final String bigBlind;
  final String ante;

  Blind({
    required this.id,
    required this.level,
    required this.timer,
    this.reEntry = false,
    required this.smallBlind,
    required this.bigBlind,
    this.ante = "",
  });
}
