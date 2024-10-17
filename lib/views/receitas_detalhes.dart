import 'package:flutter/material.dart';
import 'package:loja_flutter/constants/app_styles.dart';

//import 'package:loja_flutter/controller/receitas_controller.dart';
import 'package:loja_flutter/models/receita_model.dart';
import 'package:loja_flutter/providers/favorite_provider.dart';
import 'package:provider/provider.dart';

class ReceitasDetalhes extends StatelessWidget {
  const ReceitasDetalhes({
  super.key, 
  required this.receita, 

  });

  final Receita receita;
 
  @override
  Widget build(BuildContext context) {
    
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    bool isFavorite = favoriteProvider.isFavorite(receita) ;

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
              ClipRRect(
                borderRadius: BorderRadius.circular(140.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.network(receita.strMealThumb, 
                  height: 300,
                                 // width: double.infinity,
                  ),
                ),
              ),

              Positioned(
                right: 10,
                top: 5.0, // posicionamento do coração para favorito
                child: IconButton(
                  onPressed: (){
                    if(isFavorite)
                    {
                      favoriteProvider.removeReceitasFavoritas(receita);
                    } else {
                      favoriteProvider.addReceitasFavoritas(receita);
                    }
                  },
                  icon: isFavorite ? Icon(Icons.favorite, 
                  color:  Color.fromARGB(255, 255, 0, 0)) : 
                  Icon(Icons.favorite_outline_outlined,
                  color: Color.fromARGB(255, 250, 0, 0),
                  ), 
                ),
              ),
            ]
            ),
          
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(receita.strMeal,
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
              child: Text(receita.strInstructions,
              textAlign: TextAlign.justify,
              style: TextStyle(
              fontWeight: FontWeight.bold,  
              ),
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text('Ingredientes',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
              ),
              ),
            ),

              Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(' ${receita.getIngredientsWithMeasures().join('   ').replaceAll('[', '')
              .replaceAll(']', '')
              .replaceAll(',', ' ') }',
              textAlign: TextAlign.justify,
              style: TextStyle(
              fontWeight: FontWeight.bold,  
              ),
              
              ),
            ),

            // Text('Medidas',
            // textAlign: TextAlign.center,
            // style: TextStyle(
            // fontSize: 20,
            // fontWeight: FontWeight.bold
            // ),
            // ),

            // Padding(
            //   padding: const EdgeInsets.all(24.0),
            //   child: Text(' ${receita.getMeasures()}',
            //   textAlign: TextAlign.justify,
            //   style: TextStyle(
            //   fontWeight: FontWeight.bold,  
            //   ),
              
            //   ),
            // ),
           
           
          ],
          ),
        ),
    );
  }
}