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
        body: Column(children: [
          Text(widget.receita.strMeal, 
          style:  const TextStyle(
          color:  Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.w700, 
          ),
          ),
          Image.network(widget.receita.strMealThumb, 
          width: 400,
          ),
          Text(widget.receita.strInstructions)
        ],
        ),
    );
  }
}