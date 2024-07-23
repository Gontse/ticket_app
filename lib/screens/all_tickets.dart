import 'package:flutter/material.dart';
import 'package:ticket_app/Core/Widgets/Utils/TestData/all_json.dart';
import 'package:ticket_app/Core/Widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                children: ticketList
                    .map((ticket) => TicketView(ticket: ticket, isWholeScreen: true,))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
