import 'package:flutter/cupertino.dart';

class Vendedor with ChangeNotifier {
  final String id;
  final String nome;
  final String imageUrl;
  bool emAtendimento;

  Vendedor({
    required this.id,
    required this.nome,
    required this.imageUrl,
    this.emAtendimento = false,
  });

  void atender() {
    emAtendimento = !emAtendimento;
    notifyListeners();
  }
}
