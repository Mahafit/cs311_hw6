//----------------------------------------------------------------
// main.dart
//----------------------------------------------------------------
//
// This file contains the code for the main function.
// The main function creates the PokemonService and PokemonThem objects
// and passes them to the MyBottomNavigation widget.

import 'package:cs311hw06/pokemon_them.dart';

import 'my_bottom_navigation.dart';
import 'pokemon_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyPokemonApp());
}

class MyPokemonApp extends StatelessWidget {
  const MyPokemonApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<PokemonService>(
            create: (_) => PokemonService(),
          ),
          ChangeNotifierProvider<PokemonThem>(
            create: (_) => PokemonThem(),
          ),
        ],
        child: const MyBottomNavigation(),
      ),
    );
  }
}
