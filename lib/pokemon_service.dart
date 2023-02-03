//--------------------------------------------------------------------
// pokemon_service.dart
//--------------------------------------------------------------------
//
// This file contains the function that changes the number of Pokemon
// displayed in the PokemonList widget.

import 'package:flutter/material.dart';

class PokemonService extends ChangeNotifier {
  int pokemonCount = 25;

  void changePokemonCount(int value) {
    pokemonCount += value;
    if (pokemonCount < 0) {
      pokemonCount = 0;
    }
    notifyListeners();
  }
}
