import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tennis_play_all/stores/app.store.dart';
import 'package:tennis_play_all/views/home.view.dart';
import 'views/welcome.view.dart';
import 'helper/blockRotation.helper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with PortraitModeMixin {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiProvider(
          providers: [
            Provider<AppStore>.value(
            value: AppStore()),
          ],
          child: MaterialApp(
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              textTheme: GoogleFonts.dmSansTextTheme(),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              appBarTheme: AppBarTheme(
                color: Colors.transparent,
                elevation: 0,
              ),
            ),
        debugShowCheckedModeBanner: false,
        home: WelcomePage(),
      ),
    );
  }
}
