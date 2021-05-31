import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "All Creative works,\n"
              .richText
              .withTextSpanChildren(
                ["Selected projects".textSpan.yellow400.make()],
              )
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                ProjectWidgets(title: "Frontier Wallet"),
                ProjectWidgets(title: "Click2Chat"),
                ProjectWidgets(title: "Ready0"),
                ProjectWidgets(title: "Pay Oye"),
                ProjectWidgets(title: "Qurt fashion"),
              ],
              height: 170,
              enlargeCenterPage: true,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 1),
            ),
          )
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidgets extends StatelessWidget {
  final String title;

  const ProjectWidgets({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(color: Vx.purple700, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
