import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import "partida.agendada.view.dart";
import "notificacoes.users.view.dart";


class HomeUserPage extends StatefulWidget {
  HomeUserPage({Key key}) : super(key: key);

  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {

  @override
  Widget build(BuildContext context) {
    return Container (
       child: DefaultTabController(
          length: 2,
          child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xFF33691E),
            title: Text("Partidas e Notificações"),
            bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.deepOrangeAccent,
              tabs: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container( 
                      padding: EdgeInsets.only(right:10),
                      child: Column(
                        children: <Widget>[
                        Text("Partidas", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                        ],
                      )
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 2, left: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          // *** Ajustar as quantidades totais de partidas agendadas
                          Text('100', style: TextStyle(fontSize: 12, color: Colors.white,)),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container( 
                      padding: EdgeInsets.only(right:10),
                      child: Column(
                        children: <Widget>[
                         Text("Notificações",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                        ],
                      )
                    ),
                    Container(
                      padding: EdgeInsets.only(right:2, left: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Column(
                        children: <Widget>[
                          // *** Ajustar as quantidades de Notificações 
                          Text('100', style: TextStyle(fontSize: 12, color: Colors.white))
                        ],
                      ),
                    ),   
                  ],
                ),
              ],
             )
            ),
            // Chama as Pages do corpo das notificações a agendas conforme selecionado pela Tab
            body: TabBarView(
              children: <Widget>[
                PartidaAgendadaPage(),
                NotificacoesUsuarioPage()
              ]
            ),
          )
       )
    );
  }
}