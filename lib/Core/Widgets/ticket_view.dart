import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/Core/Widgets/app_layoutbuilder.dart';
import 'package:ticket_app/Core/Widgets/big_circle.dart';
import 'package:ticket_app/Core/Widgets/big_dot.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 188,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Center(
                    child: Column(
                  children: [
                    // Departure/Destination names
                    Row(
                      children: [
                        Text(
                          "NYC",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
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
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    // Dates and Time
                    Row(
                      children: [
                        Text(
                          "New York",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "4H20",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "South Africa",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )),
              ),
              Container(
                height: 20,
                color: AppStyles.ticketOrange,
                child: Row(
                  children: [
                    const BigCircle(isRight: true,),
                    Expanded(child: Container()),
                    const BigCircle(isRight: false,),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppStyles.ticketOrange,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))),
                child: Center(
                    child: Column(
                  children: [
                    // Departure/Destination names
                    Row(
                      children: [
                        Text(
                          "NYC",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
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
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    // Dates and Time
                    Row(
                      children: [
                        Text(
                          "New York",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "4H20",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "South Africa",
                          style: AppStyles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )),
              ),
            ],
          ),
        ));
  }
}
