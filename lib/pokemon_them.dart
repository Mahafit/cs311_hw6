// ---------------------------------------------------------------------------
// pokemon_them.dart
// ---------------------------------------------------------------------------
//
// This file contains the functionality for the PokemonThem class. The
// PokemonThem class contains the current theme color for the app.

import 'package:flutter/material.dart';

const Map<String, int> themeColor = {
  "Normal": 0xFFA8A77A,
  "Fire": 0xFFEE8130,
  "Water": 0xFF6390F0,
  "Electric": 0xFFF7D02C,
  "Grass": 0xFF7AC74C,
  "Ice": 0xFF96D9D6,
  "Fighting": 0xFFC22E28,
  "Poison": 0xFFA33EA1,
  "Ground": 0xFFE2BF65,
  "Flying": 0xFFA98FF3,
  "Psychic": 0xFFF95587,
  "Bug": 0xFFA6B91A,
  "Rock": 0xFFB6A136,
  "Ghost": 0xFF735797,
  "Dragon": 0xFF6F35FC,
  "Dark": 0xFF705746,
  "Steel": 0xFFB7B7CE,
  "Fairy": 0xFFD685AD
};

class PokemonThem extends ChangeNotifier {
  Color currentTheme = Color(themeColor['Grass']!);
  Color get currentColor => Color(themeColor[currentTheme]!);
  void changeTheme(String newTheme) {
    /// if newTheme contains a "/" then separate the string and use the first part
    if (newTheme.contains("/")) {
      newTheme = newTheme.split("/")[0];
    }
    currentTheme = Color(themeColor[newTheme]!);
    notifyListeners();
  }
}
