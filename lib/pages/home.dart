import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lista_atendimento/pages/vendedores_list_view.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista da vez'),
      ),
      body: VendedorListView(),
    );
  }
}
