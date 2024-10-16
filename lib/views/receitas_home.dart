
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:loja_flutter/constants/app_styles.dart';
import 'package:loja_flutter/models/receita_model.dart';
import 'package:loja_flutter/views/receitas_detalhes.dart';
import 'package:http/http.dart' as http;
import 'package:loja_flutter/views/widgets/category_widget.dart';

class ReceitasHome extends StatefulWidget {
  const ReceitasHome({super.key});

  @override
  State<ReceitasHome> createState() => _ReceitasHomeState();
}

class _ReceitasHomeState extends State<ReceitasHome> {
  @override
  void initState() {
    
    // chamada da api aqui
    getReceitas();
    super.initState();
  }

  List<Receita> allReceitas = [];

  getReceitas () async {
    // Utilizar http  (pacote flutter)
      String baseURL = "https://www.themealdb.com/api/json/v1/1/search.php?f=s";   //"https://www.themealdb.com/api/json/v1/1/lookup.php?i=53065";
      
      
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
      
    
      setState(() {
          allReceitas; //= listaReceitas.map((receita) => Receita.fromJson(receita)).toList();
        //print(allReceitas[0].strMeal);
      });
      
  }
 
  @override
  Widget build(BuildContext context) {
    return   Scaffold( 
      appBar:  AppBar(
      centerTitle: true,
      title: Text("Receitas Binárias", style:AppStyles.bigTitle),
      
      ),

      // botão flutuante
      // floatingActionButton: FloatingActionButton(
      //   child: const Text("data"),
      //   onPressed: () async {
        
      //    await getReceitas();
          
      //   }),

      //SingleChildScrollView serve para dar a rolagem na tela 
      body: 
      allReceitas.isEmpty ? Center(child: CircularProgressIndicator() ,) :
      SingleChildScrollView(
        child: Column(
        children: [
       // const Text("data"),
        GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.all(15),
        gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        ),
        itemCount: allReceitas.length, // 8 quantidade de itens na grid
        // receitas é minha lista do arquivo receitas.dart 
        itemBuilder: (BuildContext context, int index)
        {
          return GestureDetector(
            onTap: () {
              // mandando para pagina de detalhes da receita a description e imgprod
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>  ReceitasDetalhes(
                  receita: allReceitas[index],
                 
                  ),
                ),
              );  
            },
            child:  CategoryWidget(receita: allReceitas[index],
            )
            );
        }),
            ],
          ),
      )

    );
  }
}

