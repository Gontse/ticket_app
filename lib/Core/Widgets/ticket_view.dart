import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Core/Widgets/big_dot.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 178,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(16),
        child: Center(child: Column(
          children: [
            Row(
              children: [
                Text("NYC", style: AppStyles.headlineStyle3.copyWith(
                  color: Colors.white),),
                Expanded(child: Container()),
                BigDot(),
                Expanded(child: Stack(children: [
                  SizedBox(
                    child: Text("----------------"),
                  ),
                  Center(child: Text("Plane"),)
                ],)),
                BigDot(),
                Expanded(child: Container()),
                Text("NYC", style: AppStyles.headlineStyle3.copyWith(
                    color: Colors.white),),
              ],
            )
          ],
        )),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
      ),
    );
  }
}
