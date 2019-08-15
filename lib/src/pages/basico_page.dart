import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SingleChildScrollView(
       child: Column(
         children: <Widget>[
         _crearImagen(),
         _crearTitulo(),
         _crearAcciones(),
         _crearTexto(),
         _crearTexto(),
         _crearTexto(),
         _crearTexto(),
        ],
       ),
      )
    );
  }

  Widget _crearImagen(){

    return  Container(
      width: double.infinity,
      child: Image(
              image: NetworkImage('https://wallpaperplay.com/walls/full/f/f/1/122862.jpg'),
              height: 220.0,
              fit: BoxFit.cover,
            ),
    );
  }

  Widget _crearTitulo() {

    return  SafeArea(
          child: Container(
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
            ),
    );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
       
           _accion( Icons.call, 'Call'),
           _accion( Icons.near_me, 'ROUTE'),
           _accion( Icons.share, 'Share'),
      
      ],
    );

  }

  Widget _accion(IconData icon, String texto){

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle(fontSize: 15.0, color: Colors.blue ) )
      ],
    );
  }

  Widget  _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:  40.0),
        child: Text(
          'Sunt nostrud do ea incididunt duis et Lorem nostrud nisi. Officia id sint in occaecat excepteur non excepteur eu eu enim occaecat id. Irure consequat do veniam non veniam fugiat fugiat et do ea commodo. Eu ut sunt eiusmod dolore nulla ipsum nostrud minim aute. Occaecat nulla ut laboris elit adipisicing ullamco minim dolor nostrud voluptate. Laboris quis laboris aute officia id amet commodo incididunt id deserunt sit mollit commodo do. Ea sit magna labore sit ullamco laborum dolor.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}