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
                  Text('Notificacões ${index + 1}', style: TextStyle(fontSize:16, color: Colors.green[900])),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                ],
              ),
            ),
          );
        }
       )
      );
  }
}