import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_atendimento/models/vendedor.dart';
import 'package:lista_atendimento/models/vendedor_list.dart';
import 'package:lista_atendimento/pages/vendedor_grid.dart';
import 'package:lista_atendimento/pages/vendedor_item.dart';
import 'package:provider/provider.dart';

class VendedorListView extends StatefulWidget {
  @override
  State<VendedorListView> createState() => _VendedorListViewState();
}

class _VendedorListViewState extends State<VendedorListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Atendimento do Picachu'),
        ),
        body: VendedorGrid());
  }
}
