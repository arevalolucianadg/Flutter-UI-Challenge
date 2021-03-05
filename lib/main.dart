import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_ui_challenge/src/routes/routes.dart';
import 'package:flutter_ui_challenge/src/pages/not_found_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          textTheme: GoogleFonts.latoTextTheme(textTheme),
        ),
        initialRoute: '/',
        routes: getRoutes(),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) => NotFoundPage(),
          );
        });
  }
}
