import 'package:flutter/material.dart';
import 'package:loja_flutter/providers/favorite_provider.dart';
import 'package:loja_flutter/views/receitas_detalhes.dart';
import 'package:provider/provider.dart';

class ReceitasFavoritas extends StatelessWidget {
  const ReceitasFavoritas({super.key});

  @override
  Widget build(BuildContext context) {

    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    print(favoriteProvider.receitasFavoritas);
    return  Scaffold(
      appBar: AppBar(
      title: const Text("Favoritos"),
      backgroundColor: Colors.grey,
    ),
    body: ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: favoriteProvider.receitasFavoritas.length,
    itemBuilder: (BuildContext context, int index) {
      final receita = favoriteProvider.receitasFavoritas[index];
      
      return  GestureDetector(
        onTap: () {
            Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  ReceitasDetalhes(
                      receita: receita,
                      ),
                    ),
                  );  
        },
        child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.network(receita.strMealThumb),
            ),
            title:  Text(receita.strMeal),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
      );
    }),
    );
  }
}