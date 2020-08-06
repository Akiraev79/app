import 'package:flutter/material.dart';

class PartidaAgendadaPage extends StatefulWidget {
  PartidaAgendadaPage({Key key}) : super(key: key);

  @override
  _PartidaAgendadaPageState createState() => _PartidaAgendadaPageState();
}

class _PartidaAgendadaPageState extends State<PartidaAgendadaPage> {

  int _qtd_agendadas = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        itemCount: _qtd_agendadas,
        itemBuilder: (context, index){
            return Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Partidas Agendadas ${index + 1}', style: TextStyle(fontSize:16, color: Colors.green[900]),),
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