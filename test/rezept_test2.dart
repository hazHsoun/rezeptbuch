// import 'package:flutter_test/flutter_test.dart';
// import 'package:rezeptbuch/Data/Data/zutaten.dart';
// import 'package:rezeptbuch/Data/Data/rezept.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:rezeptbuch/Data/Data/zutatenListe.dart';

// void main() {
//   test('klasse erstelleung', () {
//     Rezept rezept1 = Rezept(
//         name: "Spaghetti Bolognese",
//         zutaten: ["Nudeln", "Hackfleisch", "Tomatensoße"],
//         anleitung: "Koche die Nudeln und brate das Hackfleisch...");

//     expect(rezept1.anleitung, "Koche die Nudeln und brate das Hackfleisch...");
//     expect(rezept1.name, "Spaghetti Bolognese");
//     expect(rezept1.zutaten, ["Nudeln", "Hackfleisch", "Tomatensoße"]);
//   });

//   test('methoden test', () {
//     final rezeptListe = RezepteBearbeitung();
//     Rezept rezept1 = Rezept(
//         name: "Spaghetti Bolognese",
//         zutaten: ["Nudeln", "Hackfleisch", "Tomatensoße"],
//         anleitung: "Koche die Nudeln und brate das Hackfleisch...");
//     rezeptListe.addRezept(rezept1);
//     rezeptListe.removeRezept(rezept1);
//     expect(rezeptListe.rezepte, []);
//   });
//   test('rezept edit', () {
//     final rezepteBearbeitung = RezepteBearbeitung();

//     Rezept oldRezept = Rezept(
//         name: "Spaghetti Bolognese",
//         zutaten: ["Nudeln", "Hackfleisch", "Tomatensoße"],
//         anleitung: "Koche die Nudeln und brate das Hackfleisch...");

//     Rezept newRezept = Rezept(
//         name: "Geänderte Anleitung",
//         zutaten: ["Nudeln", "Hackfleisch", "Tomatensoße", "Käse"],
//         anleitung: "Spaghetti Bolognese Deluxe");

//     rezepteBearbeitung.addRezept(oldRezept);
//     rezepteBearbeitung.editRezept(oldRezept, newRezept);
//   });
// }
