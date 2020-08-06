import 'package:flutter/material.dart';

class PerfilUserPage extends StatefulWidget {
  PerfilUserPage({Key key}) : super(key: key);

  @override
  _PerfilUserPageState createState() => _PerfilUserPageState();
}

class _PerfilUserPageState extends State<PerfilUserPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       
        child: ListView(
          children: <Widget>[
            // container do topo da tela
            Container(
              width: 128,
              height: MediaQuery.of(context).size.height * 1.0,
              padding: EdgeInsets.only(
                top: 60,
                left: 40,
                right: 40,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFF33691E),
                    Color(0xFF64DD17),
                  ],
                ),
              ),
              child: Column(children: <Widget>[
                SizedBox(
                  height: 128,
                  width: 128,
                  child: Image.asset("assets/logo_branco.png"),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  height: 200,
                  child: Text(
                    "Perfil do usuario",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  //child: Text(_appStore.strDisplayName),
                ),
              ]),
            ),
          ],
        ),
    );
  }
}