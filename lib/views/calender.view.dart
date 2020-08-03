import 'package:flutter/material.dart';

class CalenderUserPage extends StatefulWidget {
 CalenderUserPage({Key key}) : super(key: key);

  @override
   _CalenderUserPageState createState() =>  _CalenderUserPageState();
}

class  _CalenderUserPageState extends State<CalenderUserPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
       child: SizedBox(
                height: 30,
                child: Text( "Calender",
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