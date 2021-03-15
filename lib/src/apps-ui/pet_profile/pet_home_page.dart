import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/src/apps-ui/pet_profile/widgets/body_widget.dart';

import 'package:flutter_ui_challenge/src/pages/home_page.dart';

class PetHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => HomePage()),
          ),
        ),
      ),
      body: Body(),
      extendBodyBehindAppBar: true,
    );
  }
}
