import 'package:flutter/material.dart';

class NotificacoesUsuarioPage extends StatefulWidget {
  NotificacoesUsuarioPage({Key key}) : super(key: key);

  @override
  _NotificacoesUsuarioPageState createState() => _NotificacoesUsuarioPageState();
}

class _NotificacoesUsuarioPageState extends State<NotificacoesUsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container( 
                          height: 18,
                          width:  MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft ,
                                child: Text('10/08/2020', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ) 
                        ),
                        Container(   
                          width:  MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[ 
                              Align(
                                alignment: Alignment.topRight,
                                child: Text('11:28', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ) 
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container( 
                          width:  MediaQuery.of(context).size.width * 0.9,
                          child: Column(
                            children: <Widget>[
                             Text('Titulo da Notificação', style: TextStyle(fontSize:16, color: Colors.orange[800], fontWeight: FontWeight.bold),),
                            ],
                          ) 
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Container( 
                          width:  MediaQuery.of(context).size.width * 0.9,
                          child: Column(
                            children: <Widget>[
                             Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                            ],
                          ) 
                        ),
                      ],
                    ),    
                ],
              ),
            ),
          );
        }
       )
      );
  }
}