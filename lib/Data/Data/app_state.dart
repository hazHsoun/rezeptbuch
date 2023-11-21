import 'package:rezeptbuch/Data/Data/rezept.dart';
import 'package:rezeptbuch/Data/Data/zutaten.dart';

class AppState {
  List<Rezept> rezepte;
  List<Zutat> zutaten;

  AppState({required this.rezepte, required this.zutaten});

  AppState copyWith({
    List<Rezept>? rezepte,
    List<Zutat>? zutaten,
  }) {
    return AppState(
      rezepte: rezepte ?? this.rezepte,
      zutaten: zutaten ?? this.zutaten,
    );
  }
}
