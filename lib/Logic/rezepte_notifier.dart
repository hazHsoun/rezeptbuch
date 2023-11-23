// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:rezeptbuch/Data/Data/app_state.dart';
// import '../Data/Data/rezept.dart';
// import '../Data/Data/zutaten.dart';

// class RezeptProvider extends Notifier<AppState> {
//   AppState build() => AppState(rezepte: [], zutaten: []);

//   void addRezept(Rezept rezept) {
//     final newRezepte = [...state.rezepte, rezept];
//     final newState = state.copyWith(rezepte: newRezepte);
//     state = newState;
//   }

//   void addZutat(Zutat zutat) {
//     final newZutat = [...state.zutaten, zutat];
//     final newState = state.copyWith(zutaten: newZutat);
//     state = newState;
//   }

//   void editRezept(int index, Rezept rezept) {
//     final newRezepte = [...state.rezepte];
//     newRezepte[index] = rezept;
//     final newState = state.copyWith(rezepte: newRezepte);
//     state = newState;
//   }

//   void editZutat(int index, Zutat zutat) {
//     final newZutaten = [...state.zutaten];
//     newZutaten[index] = zutat;
//     final newState =
//         state.copyWith(rezepte: state.rezepte, zutaten: newZutaten);
//     state = newState;
//   }

//   void deleteRezept(int index) {
//     final newRezepte = [...state.rezepte];
//     newRezepte.removeAt(index);
//     final newState = state.copyWith(rezepte: newRezepte);
//     state = newState;
//   }

//   void deleteZutat(int index) {
//     final newZutaten = [...state.zutaten];
//     newZutaten.removeAt(index);
//     final newState = state.copyWith(zutaten: newZutaten);
//     state = newState;
//   }
// }
