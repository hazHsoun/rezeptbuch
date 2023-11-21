import 'package:rezeptbuch/Data/Data/app_state.dart';

class Zutat {
  String? name;
  List<String>? zutaten;

  Zutat({required this.name, required this.zutaten});

  Zutat copyWith({
    String? name,
    List<String>? zutaten,
  }) {
    return Zutat(
      name: name ?? this.name,
      zutaten: zutaten ?? this.zutaten,
    );
  }
}
