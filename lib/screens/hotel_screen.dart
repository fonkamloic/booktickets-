import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen(
      {Key? key,
      required this.image,
      required this.place,
      required this.destination,
      required this.price})
      : super(key: key);
  final String image;
  final String place;
  final String destination;
  final int price;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      width: size.width * 0.6,
      margin: const EdgeInsets.only(right: 17, top: 5),
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/$image'))),
        ),
        const Gap(10),
        Text(
          place,
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        Text(
          destination,
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        const Gap(8),
        Text(
          '\$$price/night',
          style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
