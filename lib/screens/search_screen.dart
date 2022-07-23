import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/page_title_text.dart';
import 'package:booktickets/widgets/app_tickets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          const PageTitleText(
            title: 'What are\nyou looking for?',
          ),
          Gap(AppLayout.getHeight(20)),
          const AppTicketsTabs(
            firstTapText: 'Airline tickets',
            secondTapText: 'Hotels',
          ),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
                color: const Color(0xd91130ce),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(
              bigText: 'Upcoming Flights', smallText: 'View all', onTap: () {}),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width * 0.4,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        color: Colors.grey.shade200)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                ),
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(190),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(12)),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/sit.jpg'),
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Text(
                    "20% discount on the early booking of this flight. Don't misss.",
                    style: Styles.headLineStyle2.copyWith(
                      fontSize: AppLayout.getHeight(20),
                    ),
                  ),
                ]),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(200),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        decoration: BoxDecoration(
                            color: const Color(0xff3ab8bb),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our service and get a discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: AppLayout.getWidth(18)),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: AppLayout.getWidth(-45),
                        top: AppLayout.getHeight(-40),
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getWidth(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: AppLayout.getWidth(18),
                              color: const Color(0xff189999),
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    width: AppLayout.getWidth(size.width * 0.44),
                    height: AppLayout.getHeight(210),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(18),
                        ),
                        color: const Color(0xffec6545)),
                    child: Column(children: [
                      Text(
                        'Take love',
                        style: Styles.headLineStyle2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Gap(AppLayout.getHeight(5)),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: '😍', style: TextStyle(fontSize: 38)),
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 50)),
                        TextSpan(text: '😘', style: TextStyle(fontSize: 38)),
                      ]))
                    ]),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
