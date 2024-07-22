import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/Core/Widgets/app_layoutbuilder.dart';
import 'package:ticket_app/Core/Widgets/big_circle.dart';
import 'package:ticket_app/Core/Widgets/big_dot.dart';
import 'package:ticket_app/Core/Widgets/text_style_third.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';


class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 250,
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
                        const TextStyleThird(text: "NYC",),
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
                        SizedBox(
                          width: 100,
                          child: Text(
                            "New York",
                            style: AppStyles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "4H20",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: Text(
                            "South Africa",
                            textAlign: TextAlign.end,
                            style: AppStyles.headlineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              ),
              Container(
                height: 20,
                color: AppStyles.ticketOrange,
                child: const Row(
                  children: [
                    BigCircle(isRight: true,),
                    Expanded(child: AppLayoutBuilderWidget(randomDivider: 20, width: 6,)),
                    BigCircle(isRight: false,),
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
                        SizedBox(
                          width: 70,
                          child: Text(
                            "1 JUNE",
                            style: AppStyles.headlineStyle3
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Expanded(child: Container()),
                        Expanded(
                            child: Stack(children: [
                           SizedBox(
                              height: 24,
                              child: Container(),),
                          Center(child: Text("07:00AM", style: AppStyles.headlineStyle3.copyWith(color: Colors.white),))
                        ])),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 70,
                          child: Text(
                            textAlign: TextAlign.end,
                            "13",
                            style: AppStyles.headlineStyle3
                                .copyWith(color: Colors.white),
                          ),
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
                          "Date",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "07:00 AM",
                          style: AppStyles.headlineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "Number",
                          style: AppStyles.headlineStyle4
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
