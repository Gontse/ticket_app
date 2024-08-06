import 'package:flutter/material.dart';
import 'package:ticket_app/Core/Widgets/Utils/TestData/all_json.dart';
import 'package:ticket_app/Core/Widgets/app_layoutbuilder.dart';
import 'package:ticket_app/Core/Widgets/big_circle.dart';
import 'package:ticket_app/Core/Widgets/big_dot.dart';
import 'package:ticket_app/Core/Widgets/text_style_fourth.dart';
import 'package:ticket_app/Core/Widgets/text_style_third.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isWholeScreen;
  final bool? isColor;

  const TicketView(
      {super.key,
      required this.ticket,
      this.isWholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width * 0.85,
        height: 250,
        child: Container(
          margin: EdgeInsets.only(right: isWholeScreen ? 0 : 16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyles.ticketBlue
                        : AppStyles.ticketWhite,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Center(
                    child: Column(
                  children: [
                    // Departure/Destination names
                    Row(
                      children: [
                        TextStyleThird(
                          text: ticket["from"]["code"],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        BigDot(isColor: isColor),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                  randomDivider: 5, isColor: isColor)),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: AppStyles.ticketBigDotSecondaryColor,
                              ),
                            ),
                          )
                        ])),
                        BigDot(isColor: isColor),
                        Expanded(child: Container()),
                        TextStyleThird(
                          text: ticket["to"]["code"],
                          isColor: isColor,
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
                            ticket["from"]["name"],
                            style: isColor == null
                                ? AppStyles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : AppStyles.headlineStyle4
                                    .copyWith(color: Colors.black),
                          ),
                        ),
                        Expanded(child: Container()),
                        TextStyleFourth(
                          text: ticket["flying_time"],
                          isColor: isColor,
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["to"]["name"],
                            isColor: isColor,
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
                    BigCircle(
                      isRight: true,
                    ),
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 20,
                      width: 6,
                    )),
                    BigCircle(
                      isRight: false,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? AppStyles.ticketOrange
                        : AppStyles.ticketWhite,
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
                          width: 80,
                          child: Text(
                            ticket["date"],
                            style: AppStyles.headlineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                        Expanded(child: Container()),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                            height: 24,
                            child: Container(),
                          ),
                          Center(
                              child: Text(
                            ticket["departure_time"],
                            style: AppStyles.headlineStyle4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black),
                          ))
                        ])),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 90,
                          child: Text(
                            textAlign: TextAlign.end,
                            ticket["number"].toString(),
                            style: AppStyles.headlineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Colors.black),
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
                          style: AppStyles.headlineStyle4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "Departure",
                          style: AppStyles.headlineStyle4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "Number",
                          style: AppStyles.headlineStyle4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.black),
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
