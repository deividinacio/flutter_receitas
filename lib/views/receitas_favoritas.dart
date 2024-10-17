import 'package:flutter/material.dart';
import 'package:loja_flutter/controller/favoritos_controller.dart';

class ReceitasFavoritas extends StatelessWidget {
  const ReceitasFavoritas({super.key});

  @override
  Widget build(BuildContext context) {

    print(FavoritosController().allFavoritos().length);
    return  Scaffold(
      appBar: AppBar(
      title: const Text("Favoritos"),
      backgroundColor: Colors.grey,
    ),
    body: ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: 20,
    itemBuilder: (BuildContext context, int index) {
      return const ListTile(
          leading: FlutterLogo(),
          title:  Text("Favoritos aqui"),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        );
    }),
    );
  }
}