import 'package:flutter/material.dart';

import 'package:flutter_ui_challenge/src/pages/home_page.dart';
import 'package:flutter_ui_challenge/src/apps-ui/login_ui.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'login-challenge': (BuildContext context) => LoginUi(),
  };
}
