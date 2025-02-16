import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['uno', 'dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componenetes Temp'),
      ),
      body: ListView(
       // children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }

  /*List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider());
    }

    return lista;
  }*/

  List<Widget> _crearItemsCorta(){

    return opciones.map(( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item+'!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              
            },
          ),
          Divider()
        ],
      );
      
    }).toList();

  }
}