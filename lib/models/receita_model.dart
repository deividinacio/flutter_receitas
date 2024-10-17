


//import 'package:loja_flutter/models/ingrediente_model.dart';

class Receita {
  
    final String  idMeal;
    final String  strMeal;
    final String  strDrinkAlternate;
    final String  strCategory;
    final String  strArea;
    final String  strInstructions;
    final String  strMealThumb;
    final String  strTags;
    final String  strYoutube;
    final String  strIngredient1;
    final String  strIngredient2;
    final String  strIngredient3;
    final String  strIngredient4;
    final String  strIngredient5;
    final String  strIngredient6;
    final String  strIngredient7;    
    final String  strIngredient8;
    final String  strIngredient9;
    final String  strIngredient10;
    final String  strIngredient11;
    final String  strIngredient12;
    final String  strIngredient13;
    final String  strIngredient14;
    final String  strIngredient15;
    final String  strIngredient16;
    final String  strIngredient17;
    final String  strIngredient18;
    final String  strIngredient19;
    final String  strIngredient20;
    final String  strMeasure1;
    final String  strMeasure2;
    final String  strMeasure3;
    final String  strMeasure4;
    final String  strMeasure5;
    final String  strMeasure6;
    final String  strMeasure7;
    final String  strMeasure8;
    final String  strMeasure9;
    final String  strMeasure10;
    final String  strMeasure11;
    final String  strMeasure12;
    final String  strMeasure13;
    final String  strMeasure14;
    final String  strMeasure15;
    final String  strMeasure16;
    final String  strMeasure17;
    final String  strMeasure18;
    final String  strMeasure19;
    final String  strMeasure20;
    final String  strSource; 
    final String  strImageSource;
    final String  strCreativeCommonsConfirmed;
    final String  dateModified;
    
  Receita({

  required this.idMeal, 
  required this.strMeal, 
  required this.strDrinkAlternate, 
  required this.strCategory, 
  required this.strArea, 
  required this.strInstructions, 
  required this.strMealThumb, 
  required this.strTags, 
  required this.strYoutube, 
  required this.strIngredient1, 
  required this.strIngredient2, 
  required this.strIngredient3, 
  required this.strIngredient4, 
  required this.strIngredient5, 
  required this.strIngredient6, 
  required this.strIngredient7, 
  required this.strIngredient8, 
  required this.strIngredient9, 
  required this.strIngredient10, 
  required this.strIngredient11, 
  required this.strIngredient12, 
  required this.strIngredient13, 
  required this.strIngredient14, 
  required this.strIngredient15, 
  required this.strIngredient16, 
  required this.strIngredient17, 
  required this.strIngredient18, 
  required this.strIngredient19, 
  required this.strIngredient20, 
  required this.strMeasure1, 
  required this.strMeasure2, 
  required this.strMeasure3, 
  required this.strMeasure4, 
  required this.strMeasure5, 
  required this.strMeasure6, 
  required this.strMeasure7, 
  required this.strMeasure8, 
  required this.strMeasure9, 
  required this.strMeasure10, 
  required this.strMeasure11, 
  required this.strMeasure12, 
  required this.strMeasure13, 
  required this.strMeasure14, 
  required this.strMeasure15, 
  required this.strMeasure16, 
  required this.strMeasure17, 
  required this.strMeasure18, 
  required this.strMeasure19, 
  required this.strMeasure20, 
  required this.strSource, 
  required this.strImageSource, 
  required this.strCreativeCommonsConfirmed, 
  required this.dateModified,
  });
  
  
  //Retornar uma lista de ingredientes não vazios

List<String> getIngredients() {
    return [
      strIngredient1,
      strIngredient2,
      strIngredient3,
      strIngredient4,
      strIngredient5,
      strIngredient6,
      strIngredient7,
      strIngredient8,
      strIngredient9,
      strIngredient10,
      strIngredient11,
      strIngredient12,
      strIngredient13,
      strIngredient14,
      strIngredient15,
      strIngredient16,
      strIngredient17,
      strIngredient18,
      strIngredient19,
      strIngredient20,
    ].where((ingredient) => ingredient.isNotEmpty).toList();
  }

  /// Retorna uma lista de medidas não vazias.
  List<String> getMeasures() {
    return [
      strMeasure1,
      strMeasure2,
      strMeasure3,
      strMeasure4,
      strMeasure5,
      strMeasure6,
      strMeasure7,
      strMeasure8,
      strMeasure9,
      strMeasure10,
      strMeasure11,
      strMeasure12,
      strMeasure13,
      strMeasure14,
      strMeasure15,
      strMeasure16,
      strMeasure17,
      strMeasure18,
      strMeasure19,
      strMeasure20,
    ].where((measure) => measure.isNotEmpty).toList();
  }


  // concatena ingrediente com medida 

List<String> getIngredientsWithMeasures() {
  // Lista de ingredientes
  final ingredientes = [
    strIngredient1,
    strIngredient2,
    strIngredient3,
    strIngredient4,
    strIngredient5,
    strIngredient6,
    strIngredient7,
    strIngredient8,
    strIngredient9,
    strIngredient10,
    strIngredient11,
    strIngredient12,
    strIngredient13,
    strIngredient14,
    strIngredient15,
    strIngredient16,
    strIngredient17,
    strIngredient18,
    strIngredient19,
    strIngredient20,
  ];

  // Lista de medidas
  final medidas = [
    strMeasure1,
    strMeasure2,
    strMeasure3,
    strMeasure4,
    strMeasure5,
    strMeasure6,
    strMeasure7,
    strMeasure8,
    strMeasure9,
    strMeasure10,
    strMeasure11,
    strMeasure12,
    strMeasure13,
    strMeasure14,
    strMeasure15,
    strMeasure16,
    strMeasure17,
    strMeasure18,
    strMeasure19,
    strMeasure20,
  ];

  // Lista final de ingredientes e medidas concatenados.
  List<String> resultado = [];

  // Itera sobre ingredientes e medidas simultaneamente.
  for (int i = 0; i < ingredientes.length; i++) {
    if (ingredientes[i].isNotEmpty) {
      // Se a medida for vazia, usa "a gosto".
      String medida = medidas[i].isNotEmpty ? medidas[i] : 'a gosto';
      resultado.add('${ingredientes[i]} - $medida');
    }
  }

  return resultado;
}




  factory Receita.fromJson(Map<String, dynamic> jsonReceita) {

    return Receita(
    idMeal: jsonReceita['idMeal'] ?? '', 
    strMeal: jsonReceita['strMeal'] ?? '', 
    strDrinkAlternate: jsonReceita['strDrinkAlternate'] ?? '', 
    strCategory: jsonReceita['strCategory'] ?? '', 
    strArea: jsonReceita['strArea'] ?? '', 
    strInstructions: jsonReceita['strInstructions'] ?? '', 
    strMealThumb: jsonReceita['strMealThumb'] ?? '', 
    strTags: jsonReceita['strTags'] ?? '', 
    strYoutube: jsonReceita['strYoutube'] ?? '', 
    strIngredient1: jsonReceita['strIngredient1'] ?? '', 
    strIngredient2: jsonReceita['strIngredient2'] ?? '', 
    strIngredient3: jsonReceita['strIngredient3'] ?? '', 
    strIngredient4: jsonReceita['strIngredient4'] ?? '', 
    strIngredient5: jsonReceita['strIngredient5'] ?? '', 
    strIngredient6: jsonReceita['strIngredient6'] ?? '', 
    strIngredient7: jsonReceita['strIngredient7'] ?? '', 
    strIngredient8: jsonReceita['strIngredient8'] ?? '', 
    strIngredient9: jsonReceita['strIngredient9'] ?? '', 
    strIngredient10: jsonReceita['strIngredient10'] ?? '', 
    strIngredient11: jsonReceita['strIngredient11'] ?? '', 
    strIngredient12: jsonReceita['strIngredient12'] ?? '', 
    strIngredient13: jsonReceita['strIngredient13'] ?? '', 
    strIngredient14: jsonReceita['strIngredient14'] ?? '', 
    strIngredient15: jsonReceita['strIngredient15'] ?? '', 
    strIngredient16: jsonReceita['strIngredient16'] ?? '', 
    strIngredient17: jsonReceita['strIngredient17'] ?? '', 
    strIngredient18: jsonReceita['strIngredient18'] ?? '', 
    strIngredient19: jsonReceita['strIngredient19'] ?? '', 
    strIngredient20: jsonReceita['strIngredient20'] ?? '', 
    strMeasure1: jsonReceita['strMeasure1'] ?? '', 
    strMeasure2: jsonReceita['strMeasure2'] ?? '', 
    strMeasure3: jsonReceita['strMeasure3'] ?? '', 
    strMeasure4: jsonReceita['strMeasure4'] ?? '', 
    strMeasure5: jsonReceita['strMeasure5'] ?? '', 
    strMeasure6: jsonReceita['strMeasure6'] ?? '', 
    strMeasure7: jsonReceita['strMeasure7'] ?? '', 
    strMeasure8: jsonReceita['strMeasure8'] ?? '', 
    strMeasure9: jsonReceita['strMeasure9'] ?? '', 
    strMeasure10: jsonReceita['strMeasure10'] ?? '', 
    strMeasure11: jsonReceita['strMeasure11'] ?? '', 
    strMeasure12: jsonReceita['strMeasure12'] ?? '', 
    strMeasure13: jsonReceita['strMeasure13'] ?? '', 
    strMeasure14: jsonReceita['strMeasure14'] ?? '', 
    strMeasure15: jsonReceita['strMeasure15'] ?? '', 
    strMeasure16: jsonReceita['strMeasure16'] ?? '', 
    strMeasure17: jsonReceita['strMeasure17'] ?? '', 
    strMeasure18: jsonReceita['strMeasure18'] ?? '', 
    strMeasure19: jsonReceita['strMeasure19'] ?? '', 
    strMeasure20: jsonReceita['strMeasure20'] ?? '', 
    strSource: jsonReceita['strSource'] ?? '', 
    strImageSource: jsonReceita['strImageSource'] ?? '', 
    strCreativeCommonsConfirmed: jsonReceita['strCreativeCommonsConfirmed'] ?? '', 
    dateModified: jsonReceita['dateModified'] ?? ''
  );

  }
}

/*
"idMeal": "53065",
      "strMeal": "Sushi",
      "strDrinkAlternate": null,
      "strCategory": "Seafood",
      "strArea": "Japanese",
      "strInstructions": "STEP 1\r\
      "strMealThumb": "https://www.themealdb.com/images/media/meals/g046bb1663960946.jpg",
      "strTags": null,
      "strYoutube": "https://www.youtube.com/watch?v=ub68OxEypaY",
      "strIngredient1": "Sushi Rice",
      "strIngredient2": "Rice wine",
      "strIngredient3": "Caster Sugar",
      "strIngredient4": "Mayonnaise",
      "strIngredient5": "Rice wine",
      "strIngredient6": "Soy Sauce",
      "strIngredient7": "Cucumber",
      "strIngredient8": "",
      "strIngredient9": "",
      "strIngredient10": "",
      "strIngredient11": "",
      "strIngredient12": "",
      "strIngredient13": "",
      "strIngredient14": "",
      "strIngredient15": "",
      "strIngredient16": "",
      "strIngredient17": "",
      "strIngredient18": "",
      "strIngredient19": "",
      "strIngredient20": "",
      "strMeasure1": "300ml ",
      "strMeasure2": "100ml",
      "strMeasure3": "2 tbs",
      "strMeasure4": "3 tbs",
      "strMeasure5": "1 tbs",
      "strMeasure6": "1 tbs",
      "strMeasure7": "1",
      "strMeasure8": " ",
      "strMeasure9": " ",
      "strMeasure10": " ",
      "strMeasure11": " ",
      "strMeasure12": " ",
      "strMeasure13": " ",
      "strMeasure14": " ",
      "strMeasure15": " ",
      "strMeasure16": " ",
      "strMeasure17": " ",
      "strMeasure18": " ",
      "strMeasure19": " ",
      "strMeasure20": " ",
      "strSource": "https://www.bbcgoodfood.com/recipes/simple-sushi",
      "strImageSource": null,
      "strCreativeCommonsConfirmed": null,
      "dateModified": null
      */