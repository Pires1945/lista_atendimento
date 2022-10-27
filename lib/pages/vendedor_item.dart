import 'package:flutter/material.dart';
import 'package:lista_atendimento/models/vendedor.dart';

import 'package:provider/provider.dart';

//teste github
class VendedorItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vendedor = Provider.of<Vendedor>(context);
    return Card(
      child: ListTile(
        leading: Container(
          width: 70,
          height: 70,
          child: Image.network(
            vendedor.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(vendedor.nome),
        trailing: ElevatedButton(
          onPressed: () {
            vendedor.atender();
          },
          child:
              vendedor.emAtendimento ? Text('Em atendiemnto') : Text('Atender'),
        ),
      ),
    );
  }
}
