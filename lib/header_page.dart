import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/coolors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Mahesh\nKeshvala"
        .text
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer(primaryColor: Coolors.accentColor);

    return SafeArea(
      child: VxBox(
        child: VStack(
          [
            ZStack(
              [
                ImageWidgets(),
                Row(
                  children: [
                    VStack(
                      [
                        if (context.isMobile) 50.heightBox else 10.heightBox,
                        CustomAppBar().shimmer(
                          primaryColor: Coolors.accentColor,
                        ),
                        30.heightBox,
                        nameWidget,
                        20.heightBox,
                        VxBox()
                            .color(Coolors.accentColor)
                            .size(60, 10)
                            .make()
                            .shimmer(primaryColor: Coolors.accentColor),
                        30.heightBox,
                        SocialAccount(),
                      ],
                    ).pSymmetric(
                      h: context.percentWidth * 10,
                      v: 32,
                    ),
                    Expanded(
                      child: VxResponsive(
                        fallback: const Offstage(),
                        large: IntroductionWidgets()
                            .pOnly(left: 120)
                            .h(context.percentHeight * 60),
                      ),
                    ),
                  ],
                ).w(context.screenWidth)
              ],
            ),
          ],
        ),
      )
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}

class ImageWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationY(pi),
      alignment: Alignment.center,
      child: Image.asset(
        "assets/shadow.jpeg",
        fit: BoxFit.fill,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FaIcon(
      FontAwesomeIcons.solidPlusSquare,
      color: Coolors.accentColor,
      size: 50,
    );
  }
}

class SocialAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      FaIcon(
        FontAwesomeIcons.twitter,
        color: Coolors.accentColor,
        size: 40,
      )
          .click(() {
            launch("https://twitter.com");
          })
          .make()
          .shimmer(primaryColor: Coolors.accentColor),
      20.widthBox,
      FaIcon(
        FontAwesomeIcons.instagram,
        color: Coolors.accentColor,
        size: 40,
      )
          .click(() {
            launch("https://instagram.com");
          })
          .make()
          .shimmer(primaryColor: Coolors.accentColor),
      20.widthBox,
      FaIcon(
        FontAwesomeIcons.github,
        color: Coolors.accentColor,
        size: 40,
      )
          .click(() {
            launch("https://github.com");
          })
          .make()
          .shimmer(primaryColor: Coolors.accentColor),
      20.widthBox
    ].hStack();
  }
}

class IntroductionWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: VStack(
        [
          "- Introduction".text.gray500.widest.sm.make(),
          HeightBox(10),
          "Flutter developer, Kotlin, Android, Java, XML learner and beginner in flutter dart web."
              .text
              .gray500
              .xl3
              .maxLines(4)
              .make()
              .w(
                context.isMobile
                    ? context.screenWidth
                    : context.percentWidth * 40,
              ),
          20.heightBox,
          RaisedButton(
            onPressed: () {
              launch("https://github.com");
            },
            child: "visit github for examples".text.make(),
            color: Coolors.accentColor,
            shape: Vx.roundedSm,
            hoverColor: Vx.purple700,
          ).h(50),
        ],
      ),
    );
  }
}
