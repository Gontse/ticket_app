import 'package:flutter/material.dart';
import 'package:ticket_app/Core/Widgets/app_double_text.dart';
import 'package:ticket_app/Search/Widgets/app_text_icon.dart';
import 'package:ticket_app/Search/Widgets/app_ticket_tabs.dart';
import 'package:ticket_app/Search/Widgets/find_Tickets.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';
import 'package:ticket_app/res/media.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headlineStyle1.copyWith(
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(),
          const SizedBox(
            height: 30,
          ),
          const AppTextIcon(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          const SizedBox(
            height: 30,
          ),
          const FindTickets(),
          const SizedBox(
            height: 30,
          ),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View all",
            onClick: () => Navigator.pushNamed(context, "all_tickets"),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  width: size.width * .42,
                  height: 405,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 2,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: AssetImage(AppMedia.planSit),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "20% discount on the early booking of this flight. Don't Miss out",
                        style: AppStyles.headlineStyle2,)
                    ],
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        width: size.width * .44,
                        height: 210,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF3AB8B8)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",
                              style: AppStyles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            const SizedBox(height: 10),
                            Text("Take the survey about services and get discount",
                              style: AppStyles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18

                              ),),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xFF1899999),

                            )
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
