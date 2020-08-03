import 'package:flutter/material.dart';

class MessageUserPage extends StatefulWidget {
  MessageUserPage({Key key}) : super(key: key);

  @override
  _MessageUserPageState createState() => _MessageUserPageState();
}

class _MessageUserPageState extends State<MessageUserPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
       child: SizedBox(
                height: 30,
                child: Text( "Message User",
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