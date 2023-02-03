//---------------------------------------------------------------------
// pokemon_detail.dart
//---------------------------------------------------------------------
//
// This file contains the code for the PokemonDetail widget.
// The PokemonDetail widget displays the details of a Pokemon.
// The details include the Pokemon's name, types, and ability.
// The user can navigate back to the PokemonList widget by clicking
// on the back button.

import 'package:cs311hw06/pokemon_api.dart';
import 'package:flutter/material.dart';
import 'package:strings/strings.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({super.key, required this.pokemonId});

  final int pokemonId;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPokemonInfo(pokemonId),
      builder: (context, AsyncSnapshot<PokemonInfo> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text(capitalize(snapshot.data!.name)),
            ),
            body: Column(
              children: [
                Image.network(genPokemonImageUrl(pokemonId)),
                Text(
                  "NAME: ${capitalize(snapshot.data!.name)}",
                ),
                Text("TYPES: ${snapshot.data!.typesToString()}"),
                Text("ABILITY: ${capitalize(snapshot.data!.ability)}"),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: const Text(''),
            ),
            body: const CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
