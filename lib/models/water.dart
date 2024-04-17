class Water {
  final String litre;
  final String time;
  Water({
    required this.litre,
    required this.time,
  });

  String get getLitre => litre;
  String get getTime => time;
}

List<Water> waterList = [
  Water(litre: '138ml', time: '11:17 pm'),
  Water(litre: '134ml', time: '11:57 pm'),
  Water(litre: '128ml', time: '11:03 pm'),
  Water(litre: '148ml', time: '11:12 pm'),
  Water(litre: '138ml', time: '11:17 pm'),
  Water(litre: '134ml', time: '11:57 pm'),
  Water(litre: '128ml', time: '11:03 pm'),
  Water(litre: '148ml', time: '11:12 pm'),
];
