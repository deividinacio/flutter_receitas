import 'package:flutter/material.dart';
import 'package:loja_flutter/constants/app_styles.dart';
import 'package:loja_flutter/controller/favoritos_controller.dart';
//import 'package:loja_flutter/controller/receitas_controller.dart';
import 'package:loja_flutter/models/receita_model.dart';

class ReceitasDetalhes extends StatefulWidget {
  const ReceitasDetalhes({
  super.key, 
  required this.receita, 

  });

  final Receita receita;
 

  @override
  State<ReceitasDetalhes> createState() => _ReceitasDetalhesState();
}

bool isFavorite = false;

class _ReceitasDetalhesState extends State<ReceitasDetalhes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Como fazer ?", 
        style: AppStyles.bigTitle,),
        ) ,

        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
              Image.network(widget.receita.strMealThumb, 
              height: 300,
              width: double.infinity,
              ),

              Positioned(
                right: 30, // posicionamento do coração para favorito
                child: IconButton(
                  onPressed: (){

                    //  além de mudar a cor do icone, a lista de favoritos deve ser populada
                    FavoritosController().addToFavoriteList(widget.receita);
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: isFavorite ? Icon(Icons.favorite, 
                  color:  Color.fromARGB(255, 255, 0, 0)) : 
                  Icon(Icons.favorite_outline_outlined,
                  color: Color.fromARGB(255, 0, 0, 0),
                  ), 
                ),
              ),
            ]
            ),
          
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(widget.receita.strMeal,
              textAlign: TextAlign.center, 
              style:  const TextStyle(
              color:  Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w700, 
              fontSize: 20,
              
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(widget.receita.strInstructions,
              textAlign: TextAlign.justify,
              ),
            ),
          
            Text('Ingrediente : ${widget.receita.strIngredient1}'),
          ],
          ),
        ),
    );
  }
}