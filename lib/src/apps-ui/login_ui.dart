import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_ui_challenge/src/apps-ui/main_page.dart';

class LoginUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(textTheme),
      ),
      home: MainPage(),
    );
  }
}
