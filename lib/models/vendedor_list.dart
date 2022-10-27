import 'package:flutter/cupertino.dart';
import 'package:lista_atendimento/data/vendedores.dart';
import 'package:lista_atendimento/models/vendedor.dart';

class VendedorList with ChangeNotifier {
  List<Vendedor> _vendedores = dummy_vendedores;
  List<Vendedor> get vendedores => [..._vendedores];

  void addVendedor(Vendedor vendedor) {
    _vendedores.add(vendedor);
    notifyListeners();
  }
}
