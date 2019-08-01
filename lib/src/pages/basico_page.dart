import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body:Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://wallpaperplay.com/walls/full/f/f/1/122862.jpg'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Lago bosque', style:estiloTitulo),
                      SizedBox(height: 7.0),
                      Text('paisaje de la naturaleza', style: estiloSubtitulo),
                    ],
                  ),
                ),
                Icon(Icons.star, color:Colors.red, size: 30.0),
                Text('41', style:TextStyle(fontSize: 20.0))
              ],
            ),
          )
        ],
      )
    );
  }
}