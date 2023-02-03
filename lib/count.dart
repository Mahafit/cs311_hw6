//----------------------------------------------------------------
// count.dart
//----------------------------------------------------------------
//
// This file contains the code for the Count widget.
// The Count widget contains a counter that increments when the user
// clicks on the floating action button.

import 'pokemon_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Count extends StatelessWidget {
  const Count({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PokemonService>(builder: (_, pokemonService, __) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () => pokemonService.changePokemonCount(1),
              icon: const Icon(Icons.add)),
          Text(
            '${pokemonService.pokemonCount}',
            style: const TextStyle(fontSize: 30),
          ),
          IconButton(
              onPressed: () => pokemonService.changePokemonCount(-1),
              icon: const Icon(Icons.remove)),
        ],
      );
    });
  }
}
