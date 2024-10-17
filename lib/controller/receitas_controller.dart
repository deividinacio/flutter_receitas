/* Acessar a API e receber os dados  */


import 'dart:convert';
import 'package:loja_flutter/models/receita_model.dart';
import 'package:http/http.dart' as http;

class ReceitasController {
 String baseURL = "https://www.themealdb.com/api/json/v1/1/search.php?f=s";   //"https://www.themealdb.com/api/json/v1/1/lookup.php?i=53065";

 List<Receita> allReceitas = [];

 Future<List<Receita>> getAllReceitas () async
  {
      try {
        final response = await http.get(Uri.parse(baseURL));
          if(response.statusCode == 200)
          {
            Map< String, dynamic> jsonData = json.decode(response.body);
            List<dynamic> listaReceitas = jsonData['meals'];
            allReceitas = listaReceitas.map((receita) => Receita.fromJson(receita)).toList();
          } else {
            print("Erro na consulta da API : ${response.statusCode}");
          }
     } catch (ex) {
      print('Erro ao buscar receitas: $ex');
     }
    return allReceitas;
  }

}