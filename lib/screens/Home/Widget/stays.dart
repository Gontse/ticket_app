import 'package:flutter/material.dart';
import 'package:ticket_app/res/Styles/app_styles.dart';
import 'package:ticket_app/res/media.dart';

class Stay extends StatelessWidget {
  final Map<String, dynamic> accomodation;

  const Stay({super.key, required this.accomodation});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8.0),
      width: size.width * 0.6,
      height: 350,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 180,
              decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/${accomodation['image']}")))),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              accomodation['place'],
              style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              accomodation['destination'],
              style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "R${accomodation['price']}/Night",
              style: AppStyles.headlineStyle2.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
