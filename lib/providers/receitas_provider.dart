import 'package:flutter/material.dart';
import 'package:loja_flutter/controller/receitas_controller.dart';
import 'package:loja_flutter/models/receita_model.dart';

class ReceitasProvider with ChangeNotifier {

  final ReceitasController _receitasController = ReceitasController();

  List<Receita> _receitas = [];

  bool _isLoading = true;
  bool _hasError = false;

  // Pegar os produtos

  List<Receita> get allReceitas => _receitas;
  bool get isLoading  => _isLoading;
  bool get hasError => _hasError;

  // fetch das receitas
// metodo que acessa o controler da API notificar a minha arvore de Widgets

Future<void> fetchReceitas () async {

  try{

    _isLoading = true;
    List<Receita> receitas = await _receitasController.getAllReceitas();
    _receitas = receitas;
    _isLoading = false;
    _hasError = false;
    notifyListeners();
  } catch ( ex)
  {
    _isLoading = false;
    _hasError = true;
    notifyListeners();
  }
}



}