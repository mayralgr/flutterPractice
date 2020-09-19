import 'package:flutter/material.dart';
 
class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar page'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundImage: NetworkImage('https://i.pinimg.com/originals/8c/dc/40/8cdc40c3cfef831ac1e11943bb0950ad.png'),
                radius: 25.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 10.0
              ),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.deepPurple,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://www.elsoldeacapulco.com.mx/incoming/wpgvi0-villanos-creados-por-stan-lee.jpg/ALTERNATES/LANDSCAPE_768/Villanos%20creados%20por%20Stan%20lee.jpg'),
            fadeInDuration: Duration(
              milliseconds: 200
            ),
            height: 200.0,
            fit: BoxFit.contain,
          ),
        ),
      );
  }
}
