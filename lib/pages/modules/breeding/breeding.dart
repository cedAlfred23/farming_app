import 'package:flutter/material.dart';

class Breeding extends StatefulWidget {
  const Breeding({super.key});

  @override
  State<Breeding> createState() => _BreedingState();
}

class _BreedingState extends State<Breeding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Breeding'),
      ),
    );
  }
}