import 'package:flutter/material.dart';
import 'package:loja_flutter/constants/app_styles.dart';
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.network(widget.receita.strMealThumb, 
              width: 250,
              ),
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