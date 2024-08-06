import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final double width;
  final int randomDivider;

  const AppLayoutBuilderWidget({
    super.key,
    required this.randomDivider,
    this.width = 3,
    this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: isColor == null ? Colors.white : AppStyles.ticketBigDotSecondaryColor),
                  ),
                )),
      );
    });
  }
}
