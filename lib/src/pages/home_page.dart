import 'package:flutter/material.dart';

import 'package:flutter_ui_challenge/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Home'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(child: _menu()),
      )),
    );
  }

  Widget _menu() {
    return FutureBuilder(
      future: menuProvider.getData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _menuList(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _menuList(List<dynamic> data, BuildContext context) {
    final List<Widget> menuItems = [];
    print(data);
    for (var item in data) {
      final widgetTemp = GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, item['route']);
        },
        child: _menuCard(context, item),
      );

      menuItems..add(widgetTemp)..add(SizedBox(height: 12.0));
    }

    return menuItems;
  }

  Widget _menuCard(context, item) {
    return Card(
      elevation: 5.0,
      shadowColor: const Color(0xfff5f5f5),
      child: Row(children: [
        Container(
          height: 120.0,
          width: 120.0,
          decoration: BoxDecoration(color: const Color(0xfff5f5f5)),
          padding: EdgeInsets.all(16.0),
        ),
        SizedBox(width: 30.0),
        Text(
          item['name'],
          // style: Theme.of(context).textTheme.title,
        ),
      ]),
    );
  }
}
