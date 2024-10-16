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
    decoration: AppStyles.boxDecorationFlexible(18, const Color.fromARGB(50, 104, 110, 107),),
               // child: const Text('Dentro do container'),
      child: Column(
       children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child:  Image.network(receita.strMealThumb,
          width: 140,
          fit:BoxFit.cover,
        ),
        ),
       
        Text(receita.strMeal,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 12,
        fontFamily: "arial",
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