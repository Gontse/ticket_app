import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';
import 'package:ticket_app/screens/all_tickets.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText });

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headlineStyle2),
        InkWell(
          child:  Text(smallText, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          )) ,
          onTap: () => Navigator.pushNamed(context, "all_tickets"),
        )
      ],
    );
  }
}