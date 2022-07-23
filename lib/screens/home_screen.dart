import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning',
                        style: Styles.headLineStyle4,
                      ),
                      const Gap(5),
                      Text(
                        'Book Tickets',
                        style: Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/img_1.png'))),
                  ),
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xffbfc205),
                    ),
                    Text(
                      'Search',
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
              const Gap(40),
               AppDoubleTextWidget(
                bigText: 'Upcoming Flights',
                smallText: 'View all',
                onTap: (){},
              ),
            ]),
          ),
          Gap(AppLayout.getWidth(15)),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: AppLayout.getWidth(16)),
              child: Row(
                  children: ticketList
                      .map((ticketInfo) => TicketView(ticketInfo: ticketInfo))
                      .toList())),
          Gap(AppLayout.getWidth(15)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: 'Hotels', smallText: 'View all', onTap: (){}),
          ),
          Gap(AppLayout.getWidth(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((e) => HotelScreen(
                          place: e['place'],
                          image: e['image'],
                          destination: e['destination'],
                          price: e['price'],
                        ))
                    .toList()),
          ),
        ]));
  }
}
