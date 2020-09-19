import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo2(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ]
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
        ) ,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Super titulo de tarjeta'),
            subtitle: Text(
              'bandera de México, legado de nuestros heroes, simbolo de la unidad de nuestros padres y de nuestros hermnanos, te prometemos ser siempre fieles a los principios de liberta y de justicia'),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {

                },
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {

                }
              ),
            ]
          )
        ]
      ),
    );
  }

  _cardTipo2() {
    final card = Container(
      // elevation:
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20.0)
      //   ),
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image:  NetworkImage('https://www.nationalgeographic.com/content/dam/travel/rights-exempt/2019-travel-photo-contest/epic-landscapes/2019-travel-photo-contest-epic-landscapes035.ngsversion.1555645554283.adapt.1900.1.jpg'),
            fadeInDuration: Duration(
              milliseconds: 200
            ),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://www.nationalgeographic.com/content/dam/travel/rights-exempt/2019-travel-photo-contest/epic-landscapes/2019-travel-photo-contest-epic-landscapes035.ngsversion.1555645554283.adapt.1900.1.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Chale idk')
          ),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,-10.0),
          )
        ],
        // color: Colors.red,
      ),
      child : ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
    );
  }
}