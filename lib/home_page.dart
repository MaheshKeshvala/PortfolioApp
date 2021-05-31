import 'package:flutter/material.dart';
import 'package:portfolio_app/middle_page.dart';
import 'package:velocity_x/velocity_x.dart';

import 'coolors.dart';
import 'footer_page.dart';
import 'header_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Coolors.primaryColor,
        child: VStack(
          [
            HeaderPage(),
            if (context.isMobile) IntroductionWidgets().p16(),
            MiddlePage(),
            FooterPage()
          ],
        ).scrollVertical());
  }
}
