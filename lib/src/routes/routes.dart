import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/challenges/login_challenge.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'login-challenge': (BuildContext context) => LoginChallenge(),
  };
}