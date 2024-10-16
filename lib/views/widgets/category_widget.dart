import 'package:flutter/material.dart';
import 'package:loja_flutter/constants/app_styles.dart';
import 'package:loja_flutter/models/receita_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.receita,
  });

final Receita receita ;



  @override
  Widget build(BuildContext context) {
    return Container(
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(10),
    // height: 190, 
    // width: 195,
    decoration: AppStyles.boxDecorationFlexible(8, const Color.fromARGB(50, 104, 110, 107),),
               // child: const Text('Dentro do container'),
      child: Column(
       children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(150.0),
          child:  Padding(
            padding: const EdgeInsets.all(9.0),
            child: Image.network(receita.strMealThumb,
            width: 125,
            fit:BoxFit.cover,
                    ),
          ),
        ),
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(receita.strMeal,
          maxLines: 2, // limita 2 linhas para mostrar
          overflow: TextOverflow.ellipsis, // adiciona reticências caso o texto seja maior que o limite 
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 12,
          fontFamily: "arial",
          ),
          ),
        ),
        
       ],
      ) 
     
    );
  }
}

//https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg
//https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg
//https://flutter.github.io/assets-for-api-docs/assets/widgets/flamingos.jpg