
//import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:loja_flutter/constants/app_styles.dart';
import 'package:loja_flutter/providers/receitas_provider.dart';
//import 'package:loja_flutter/views/home_pageview.dart';
import 'package:loja_flutter/views/receitas_detalhes.dart';
//import 'package:http/http.dart' as http;
import 'package:loja_flutter/views/widgets/category_widget.dart';
import 'package:provider/provider.dart';

class ReceitasHome extends StatefulWidget {
  const ReceitasHome({super.key});

  @override
  State<ReceitasHome> createState() => _ReceitasHomeState();
}

class _ReceitasHomeState extends State<ReceitasHome> {
  @override
  void initState() {
    
    // chamada da api aqui
  //  getReceitas();
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {

    final receitaProvider = Provider.of<ReceitasProvider>(context);
    receitaProvider.fetchReceitas();
    return   Scaffold( 
      appBar:  AppBar(
      centerTitle: true,
      title: Text("Receitas Binárias", style:AppStyles.bigTitle),
      
      ),
      //SingleChildScrollView serve para dar a rolagem na tela 
      body: 
      //allReceitas.isEmpty ? Center(child: CircularProgressIndicator() ,) :
      SingleChildScrollView(
        // utilizar futuro tipado (com tipo de dados )
        child: 
          Column(
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
            itemCount: receitaProvider.allReceitas.length, // 8 quantidade de itens na grid
            // receitas é minha lista do arquivo receitas.dart 
            itemBuilder: (BuildContext context, int index)
            {
              return GestureDetector(
                onTap: () {
                  // mandando para pagina de detalhes da receita a description e imgprod
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  ReceitasDetalhes(
                      receita: receitaProvider.allReceitas[index],
                     
                      ),
                    ),
                  );  
                },
                child:  CategoryWidget(receita: receitaProvider.allReceitas[index],
                ));
            }),
  
            ],)
    )
    );
  }
}

