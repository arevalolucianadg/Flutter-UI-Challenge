import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {

  List<dynamic> options = [];

  _MenuProvider() {}

  Future<List<dynamic>> getData() async {
    final resp = await rootBundle.loadString('data/internalLinks.json');

    Map dataMap = json.decode(resp);
    options = dataMap['routes'];
    return options;
  }

}

final menuProvider = new _MenuProvider();