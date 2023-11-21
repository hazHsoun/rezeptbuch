import 'zutaten.dart';

class Rezept {
  final String name;
  final List<Zutat> zutaten;
  final String anleitung;

  Rezept(
      {required this.name,
      required this.zutaten,
      required this.anleitung,
      required List<String> zutat});

  Rezept copyWith({
    String? name,
    List<Zutat>? zutaten,
    String? anleitung,
  }) {
    return Rezept(
      name: name ?? this.name,
      zutaten: zutaten ?? this.zutaten,
      anleitung: anleitung ?? this.anleitung,
      zutat: [],
    );
  }
} 








// class RezepteBearbeitung {
//   List<Rezept> rezepte = [];

//   void addRezept(Rezept newRezept) {
//     rezepte.add(newRezept);
//   }

//   void editRezept(Rezept oldRezept, Rezept newRezept) {
//     final index = rezepte.indexOf(oldRezept);
//     if (index != -1) {
//       rezepte[index] = newRezept;
//     }
//   }

//   void removeRezept(Rezept newRezept) {
//     rezepte.remove(newRezept);
//   }
// }