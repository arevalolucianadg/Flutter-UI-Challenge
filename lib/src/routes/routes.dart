import 'package:flutter/material.dart';

import 'package:flutter_ui_challenge/src/pages/home_page.dart';
import 'package:flutter_ui_challenge/src/apps-ui/login_ui/login_ui.dart';
import 'package:flutter_ui_challenge/src/apps-ui/pet_profile/pet_profile.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'login-challenge': (BuildContext context) => LoginUi(),
    'pet-profile': (BuildContext context) => PetProfile(),
  };
}
