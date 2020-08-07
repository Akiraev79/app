import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[   
                    Row(children: <Widget>[
                      Container( 
                        height: 120,
                         width:  MediaQuery.of(context).size.width * 0.3,
                         child: ListTile(
                            
                            leading: CircleAvatar(
                            
                              backgroundColor: Colors.grey[400],
                              foregroundColor: Colors.black,
                              backgroundImage: NetworkImage("http://i.pravatar.cc/300"),
                              radius: 30.0,                   
                            ),
                         ) 
                      ),
                      Container(
                        width:  MediaQuery.of(context).size.width * 0.6,
                        child: Column(
                          children: <Widget>[
                            Text('Paulo Fodra dos Santos', style: TextStyle(fontSize:16, color: Colors.green[900]),),
                            Text('Partida Agendada: 18/09/2020'),
                            Text('Horario: 20:00'),
                       
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
                             Text('Club Atletico de Tenis Itatiba', style: TextStyle(fontSize:16, color: Colors.green[900]),),
                             Text('Rua Itabitibumba, 236 - Itatiba - SP'),
                            ],
                          ) 
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container( 
                        width:  MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                          children: <Widget>[
                             Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.red[800],
                                borderRadius: BorderRadius.circular(30)
                              ),
                              alignment: Alignment.centerRight,
                              child: FlatButton(
                                child: Text(
                                  "Cancelar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  
                                },
                              ),
                            ),
                       
                          ],
                        ) 
                      ),
                      Container( 
                        width:  MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                          children: <Widget>[
                             Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.green[800],
                                borderRadius: BorderRadius.circular(30)
                              ),
                              alignment: Alignment.centerRight,
                              child: FlatButton(
                                child: Text(
                                  "Aceitar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  
                                },
                              ),
                            ),
                       
                          ],
                        ) 
                      ),
                      Container(
                        width:  MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                          children: <Widget>[
                            
                             Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.orange[300],
                                borderRadius: BorderRadius.circular(30)
                              ),
                              alignment: Alignment.centerRight,
                              child: FlatButton(
                                child: Text(
                                  "Jogado",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  
                                },
                              ),
                            ),
                       
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