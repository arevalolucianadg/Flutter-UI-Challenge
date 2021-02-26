import 'package:flutter/material.dart';

class LoginChallenge extends StatelessWidget {
  const LoginChallenge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text('Login UI'),
        ),
      ),
    );
  }
}