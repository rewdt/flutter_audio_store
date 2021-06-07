import 'package:audio_store/core/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppRoot extends StatelessWidget {
  const AppRoot();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Store',
      theme: ThemeData(
          textTheme: GoogleFonts.dmSansTextTheme(
        Theme.of(context).textTheme,
      )),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
      },
    );
  }
}
