import 'package:flutter/material.dart';
import 'package:loja_flutter/providers/favorite_provider.dart';
import 'package:loja_flutter/providers/receitas_provider.dart';
import 'package:loja_flutter/views/home_pageview.dart';
import 'package:provider/provider.dart';

//import 'package:loja_flutter/views/receitas_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoriteProvider(),
        ),
        ChangeNotifierProvider(create: (context) => ReceitasProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 108, 183)),
          useMaterial3: true,
        ),
        home: const HomePageview(),
      ),
    );
  }
}
