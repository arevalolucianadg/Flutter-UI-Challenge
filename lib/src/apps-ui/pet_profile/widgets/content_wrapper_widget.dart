import 'package:flutter/material.dart';

class ContentWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _sizeHeight = MediaQuery.of(context).size.height;

    return Transform.translate(
      offset: Offset(0.0, _sizeHeight * 0.45),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
