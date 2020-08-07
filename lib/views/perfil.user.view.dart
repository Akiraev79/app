import 'package:flutter/material.dart';

class PerfilUserPage extends StatefulWidget {
  PerfilUserPage({Key key}) : super(key: key);

  @override
  _PerfilUserPageState createState() => _PerfilUserPageState();
}

class _PerfilUserPageState extends State<PerfilUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF33691E),
        // Colocar neste titulo o nome do usuario depois do "Ola, ""
        title: Text("Perfil do Usuario", style: TextStyle(fontSize: 15),),
      ),
       body: Container(
            // container do topo da tela
            
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 1.0,
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
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container( 
                        height: MediaQuery.of(context).size.height * 0.1,
                        width:  MediaQuery.of(context).size.width * 0.3,
                        child:Center(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[400],
                              foregroundColor: Colors.black,
                              backgroundImage: NetworkImage("http://i.pravatar.cc/300"),
                              radius: 30,                   
                            ),
                          )
                        ),
                      ),
                      Container(
                        width:  MediaQuery.of(context).size.width * 0.7,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[  
                                Text('Evandro Souza Santos', style: TextStyle(fontSize:18, color: Colors.white),),
                              ],
                            )
                          ],
                        ) 
                      ),    
                    ],
                  ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Column(
                    children: <Widget>[
        
                    ],
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ]
         ),
      ), 
    );
  }
}