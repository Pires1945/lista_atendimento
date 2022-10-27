import 'package:flutter/material.dart';
import 'package:lista_atendimento/pages/vendedor_item.dart';
import 'package:provider/provider.dart';

import '../models/vendedor.dart';
import '../models/vendedor_list.dart';

class VendedorGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<VendedorList>(context);
    final List<Vendedor> loadedVendedor = provider.vendedores;

    return ListView.builder(
      itemCount: loadedVendedor.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: loadedVendedor[index], child: VendedorItem()),
    );
  }
}
