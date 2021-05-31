import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/coolors.dart';
import 'package:portfolio_app/header_page.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a project?\n Let's talk".text.center.white.xl2.make(),
              10.heightBox,
              "Technolag@gmail.com"
                  .text
                  .semiBold
                  .white
                  .color(Coolors.accentColor)
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a project?\n Let's talk".text.center.white.xl2.make(),
              10.heightBox,
              "Technolag@gmail.com"
                  .text
                  .semiBold
                  .white
                  .color(Coolors.accentColor)
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make(),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentHeight * 70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrolling.".richText.semiBold.white.withTextSpanChildren(
          [
            " that's all folks".textSpan.gray500.make(),
          ],
        ).make(),
        10.heightBox,
        [
          "Made in India with ".text.red500.make(),
          FaIcon(
            FontAwesomeIcons.heart,
            color: Vx.red500,
            size: 26,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center),
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
