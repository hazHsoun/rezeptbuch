// import 'package:flutter_test/flutter_test.dart';
// import 'package:rezeptbuch/Data/Data/app_state.dart';
// import 'package:rezeptbuch/Data/Data/rezept.dart';
// import 'package:rezeptbuch/Data/Data/zutaten.dart';
// import 'package:rezeptbuch/Logic/rezept_provider.dart';

// void main() {
//   group('RezeptProvider', () {
//     test('addRezept() fügt ein Rezept hinzu', () {
//       final provider = RezeptProvider();
//       final rezept = Rezept(
//         name: 'Pizza',
//         zutaten: [Zutat(name: 'Mehl', zutaten: [])],
//         anleitung: 'Teig kneten, belegen und backen',
//         zutat: [],
//       );
//       provider.addRezept(rezept);

//       expect(provider.state.rezepte.length, 1);
//       expect(provider.state.rezepte[0].name, 'Pizza');
//     });

//     test('addZutat() fügt eine Zutat hinzu', () {
//       final provider = RezeptProvider();
//       final zutat = Zutat(name: 'Mehl', zutaten: []);
//       provider.addZutat(zutat);

//       expect(provider.state.zutaten.length, 1);
//       expect(provider.state.zutaten[0].name, 'Mehl');
//     });

//     test('editRezept() bearbeitet ein Rezept', () {
//       final provider = RezeptProvider();
//       final rezept = Rezept(
//         name: 'Pizza',
//         zutaten: [Zutat(name: 'Mehl', zutaten: [])],
//         anleitung: 'Teig kneten, belegen und backen',
//         zutat: [],
//       );
//       provider.addRezept(rezept);

//       provider.editRezept(
//           0,
//           Rezept(
//               name: 'Spaghetti',
//               zutaten: [Zutat(name: 'Nudeln', zutaten: [])],
//               anleitung: '',
//               zutat: []));

//       expect(provider.state.rezepte[0].name, 'Spaghetti');
//       expect(provider.state.rezepte[0].zutaten[0].name, 'Nudeln');
//     });

//     test('editZutat() bearbeitet eine Zutat', () {
//       final provider = RezeptProvider();
//       final zutat = Zutat(name: 'Mehl', zutaten: []);
//       provider.addZutat(zutat);

//       provider.editZutat(0, Zutat(name: 'Nudeln', zutaten: []));

//       expect(provider.state.zutaten[0].name, 'Nudeln');
//     });

//     test('deleteRezept() löscht ein Rezept', () {
//       final provider = RezeptProvider();
//       final rezept = Rezept(
//         name: 'Pizza',
//         zutaten: [Zutat(name: 'Mehl', zutaten: [])],
//         anleitung: 'Teig kneten, belegen und backen',
//         zutat: [],
//       );
//       provider.addRezept(rezept);

//       provider.deleteRezept(0);

//       expect(provider.state.rezepte.length, 0);
//     });

//     test('deleteZutat() löscht eine Zutat', () {
//       final provider = RezeptProvider();
//       final zutat = Zutat(name: 'Mehl', zutaten: []);
//       provider.addZutat(zutat);

//       provider.deleteZutat(0);

//       expect(provider.state.zutaten.length, 0);
//     });
//   });
// }
