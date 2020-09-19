// import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista(),
        );
  }
        
  Widget _lista() {
		// print(menuProvider.opciones);
		// menuProvider.cargarData().then((opciones) {
		// 	print(opciones);
		// 	print('Lista');
		// });
		return FutureBuilder(
			future: menuProvider.cargarData(),
			initialData: [],
			builder: ( context,AsyncSnapshot<List<dynamic>> snapshot) {
				// print(snapshot.data);
			  return ListView(
					children: _listaItems(snapshot.data, context),
				);
			},
		);
		
	}

	List<Widget> _listaItems( List<dynamic> data, BuildContext context) {
		// return [
		// 	ListTile( title:  Text('Hola Mundo 1')),
		// 	Divider(),
		// 	ListTile( title:  Text('Hola Mundo 2')),
		// 	Divider(),
		// 	ListTile( title:  Text('Hola Mundo 3')),
		// 	];
    // if( data == null ){ return []; } 

		List<Widget> opciones = [];
		data.forEach((element) {
			final widgetTemp = ListTile(
				title:  Text(element['texto']),
				leading: getIcon(element['icon']),
				trailing: Icon( Icons.keyboard_arrow_right, color: Colors.blue ),
				onTap: (){
          // final route = MaterialPageRoute(
          //   builder: (context) =>  AlertPage()
          // );
          // Navigator.push(context, route); // ruteo a la página

          Navigator.pushNamed(context, element['ruta']);
				},
			);
			opciones..add(widgetTemp)
							..add(Divider());

		});
		return opciones;
	}
}