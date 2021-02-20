import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI'),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              title: Text('Login')
            )
          ],
        ),
      ),
    );
  }

}