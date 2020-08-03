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
      child: Center(
       child: SizedBox(
                height: 30,
                child: Text( "Perfil User",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
      ),
    );
  }
}