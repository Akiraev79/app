import 'package:flutter/material.dart';


class HomeUserPage extends StatefulWidget {
  HomeUserPage({Key key}) : super(key: key);

  @override
  _HomeUserPageState createState() => _HomeUserPageState();
}

class _HomeUserPageState extends State<HomeUserPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
       child: SizedBox(
                height: 30,
                child: Text( "Perfil do usuario",
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