import 'dart:ui';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/Core/Widgets/Utils/TestData/all_json.dart';
import 'package:ticket_app/Core/Widgets/app_double_text.dart';
import 'package:ticket_app/res/media.dart';
import 'package:ticket_app/screens/Home/Widget/stays.dart';
import '../../Core/Widgets/ticket_view.dart';
import '../../res/Styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headlineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("Book Tickets", style: AppStyles.headlineStyle1)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD)),
                    child: const Row(
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205),
                        ),
                        Text("Search")
                      ],
                    )),
                const SizedBox(height: 40),
                AppDoubleText(bigText: "Upcoming Flights", smallText: "View all", onClick: () => Navigator.pushNamed(context, "all_tickets"),),
                const SizedBox(
                  height: 20,
                ),
               SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList.map((ticket) => TicketView(ticket: ticket,)
                      ).toList()
                    )
                ),
                AppDoubleText(bigText: "Stays", smallText: "View all", onClick: () => Navigator.pushNamed(context, "all_tickets")),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child:
                Row(
                  children: hotelList.map((accomodation) => Stay(accomodation: accomodation)).toList() ,
                )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
