import 'package:loja_flutter/models/receita_model.dart';

class FavoritosController {

  final List<Receita> _receitasFavoritas = [];  

  // metodo para acessar os favoritos 

  List<Receita> allFavoritos()
  {
    return _receitasFavoritas;
  }

// Adicionar ao favorito

void addToFavoriteList(Receita receita)
{
  //Se a receita não esta na lista, devo adiciona-la
  if(!_receitasFavoritas.contains(receita))
  {
    _receitasFavoritas.add(receita);
  }
  print(_receitasFavoritas.length);
}

// Remover favoritos

void removeToFavoriteList(Receita receita)
{
  //Se a receita está na lista, devo adiciona-la
  if(!_receitasFavoritas.contains(receita))
  {
    _receitasFavoritas.remove(receita);
  }
}

}