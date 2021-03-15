import 'package:flutter/material.dart';

import 'package:flutter_ui_challenge/src/apps-ui/pet_profile/widgets/header_image_widget.dart';
import 'package:flutter_ui_challenge/src/apps-ui/pet_profile/widgets/content_wrapper_widget.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HeaderImage(),
        ContentWrapper(),
      ],
    );
  }
}
