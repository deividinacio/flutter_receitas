import 'package:flutter/material.dart';

class ReceitasFavoritas extends StatelessWidget {
  const ReceitasFavoritas({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: const Text("Favoritos"),
      backgroundColor: Colors.grey,
    ),
    body: const Column(
      children: [
        Text("Favoritos aqui"),
        Text("Favoritos aqui 2"),
      ],
    ),
    );
  }
}