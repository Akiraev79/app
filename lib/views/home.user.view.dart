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
            backgroundColor: Color(0xFF33691E),
            title: Text("Partidas e Notificações"),
            bottom: TabBar(
              tabs: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Partidas Agendadas"),
                    Text('10', style: TextStyle(fontSize: 12, color: Colors.white, backgroundColor: Colors.red,))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Text("Notificações"),
                     Text('10', style: TextStyle(fontSize: 12, color: Colors.white, backgroundColor: Colors.red,))
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