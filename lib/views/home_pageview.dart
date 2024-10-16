import 'package:flutter/material.dart';
import 'package:loja_flutter/views/receitas_favoritas.dart';
import 'package:loja_flutter/views/receitas_home.dart';

class HomePageview extends StatefulWidget {
  const HomePageview({super.key});

  @override
  State<HomePageview> createState() => _HomePageviewState();
}

final PageController pageController = PageController();
int currentPage = 0;

// criar metodos para navegar



class _HomePageviewState extends State<HomePageview> {
  void onTap( int page){
  pageController.jumpToPage(page);
}

void onPageChanged( int index)
{
    setState(() {
      currentPage = index;
    });
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          ReceitasHome(),
         ReceitasFavoritas(),
        ],
      ),
      bottomNavigationBar: 
      BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentPage,
      items: const [
         BottomNavigationBarItem(
        icon: Icon(Icons.home , 
        color: Color.fromARGB(255, 65, 62, 62),),
        label: "Home",
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.favorite,
        color: Color.fromARGB(255, 105, 4, 4),),
        label: "Favorito",
        ),
      ]),
    );
  }
}