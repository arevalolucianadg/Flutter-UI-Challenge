import 'package:flutter/material.dart';

import 'package:flutter_ui_challenge/src/pages/home_page.dart';

class PetHomePage extends StatelessWidget {
  void handleNavigatePress(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => handleNavigatePress(context)),
            expandedHeight: 150.0,
          ),
        ],
      ),
    );
  }
}
