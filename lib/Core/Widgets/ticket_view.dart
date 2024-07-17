import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Core/Widgets/app_layoutbuilder.dart';
import 'package:ticket_app/Core/Widgets/big_dot.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 178,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        child: Center(
            child: Column(
          children: [
            Row(
              children: [
                Text(
                  "NYC",
                  style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                const BigDot(),
                Expanded(
                    child: Stack(children: [
                  const SizedBox(
                      height: 24,
                      child: AppLayoutBuilderWidget(
                        randomDivider: 5,
                      )),
                  Center(
                    child: Transform.rotate(
                      angle: 1.5,
                      child: const Icon(
                        Icons.local_airport_rounded,
                        color: Colors.white,
                      ),
                    ),
                  )
                ])),
                const BigDot(),
                Expanded(child: Container()),
                Text(
                  "RSA",
                  style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
