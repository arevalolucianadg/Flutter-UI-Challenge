import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _sizeHeight = MediaQuery.of(context).size.height;

    return Container(
      height: _sizeHeight * 0.65,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/leia.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
