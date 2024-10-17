
import 'package:flutter/material.dart';
import 'package:loja_flutter/models/receita_model.dart';

class FavoriteProvider extends ChangeNotifier {
  
 final List<Receita> _receitasFavoritas = [];

  
 // Pegar lista completa

 List<Receita> get receitasFavoritas => _receitasFavoritas;

  // Adiciona receitas aos favoritos 

  void addReceitasFavoritas (Receita receita)
  {
    if(!_receitasFavoritas.contains(receita))
    {
      _receitasFavoritas.add(receita);
      notifyListeners();
    }
  }

// remove da lista favoritos
    void removeReceitasFavoritas (Receita receita)
  {
      _receitasFavoritas.remove(receita);
      notifyListeners();
    
  }

  bool isFavorite(Receita receita)
  {
    return _receitasFavoritas.contains(receita);
  }

}