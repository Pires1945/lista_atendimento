import 'package:flutter/material.dart';
import 'package:lista_atendimento/models/vendedor_list.dart';
import 'package:lista_atendimento/pages/vendedores_list_view.dart';
import 'package:lista_atendimento/utils/routes.dart';
import 'package:provider/provider.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => VendedorList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: VendedorListView(),
      ),
    );
  }
}
