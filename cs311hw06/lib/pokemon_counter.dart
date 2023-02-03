// ---------------------------------------------------------------------------
// pokemon_counter.dart
// ---------------------------------------------------------------------------
//
// This file contains the code for the PokemonCounter widget.
// The PokemonCounter widget contains a counter that increments when the user
// clicks on the floating action button.

import 'package:cs311hw06/pokemon_them.dart';

//--------------------------------------------------------------------
// pokemon_service.dart
//--------------------------------------------------------------------
//
// This file contains the function that changes the number of Pokemon
// displayed in the PokemonList widget.

import 'pokemon_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'count.dart';

class PokemonCounter extends StatefulWidget {
  const PokemonCounter({Key? key}) : super(key: key);

  @override
  State<PokemonCounter> createState() => _PokemonCounterState();
}

class _PokemonCounterState extends State<PokemonCounter> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<PokemonService, PokemonThem>(
      builder: (_, pokemonService, pokemonTheme, __) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Pokemon Count'),
            backgroundColor: pokemonTheme.currentTheme,
          ),
          body: const Center(
            child: Count(),
          ),
        );
      },
    );
  }
}
