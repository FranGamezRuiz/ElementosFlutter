

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
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardTipo1(){
     
     return Card(
       elevation: 10.0, //para el borde sombreado
       shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0) ),
       child: Column(
         children: <Widget>[
           ListTile(
             leading: Icon(Icons.photo_album, color:Colors.blue),
             title: Text('Titulo de esta tarjeta'),
             subtitle: Text('Este es el subtitulo largo de la tarjeta que se ha creado para ver el ejemplo. Es el momento de hacer este texto aún más y más grande')
           ,),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               FlatButton(
                 child: Text('Cancelar'),
                 onPressed: (){

                 }), 
               FlatButton(
                 child: Text('ok'),
                 onPressed: (){

                 }, 
               )
             ],
           )
         ],
       ),

     );
  }

  Widget _cardTipo2(){


    final card = Container(
      
      child: Column(
        

        children: <Widget>[

          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/246/312/original/mountain-lake-sunset-landscape-first-person-view.jpg'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Este es el texto redondeado.'))
        ],
      ),

    );
    
   
    return Container(
      
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      
       //Para que la imagen no salga del card
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),

    );

  }


}