import 'package:flutter/material.dart';

import 'package:flutter_ui_challenge/src/apps-ui/pet_profile/pet_home_page.dart';

class PetProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: PetHomePage(),
    );
  }
}
