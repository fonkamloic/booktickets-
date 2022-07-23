import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/page_title_text.dart';
import 'package:booktickets/widgets/app_tickets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              const PageTitleText(title: 'Tickets'),
              Gap(AppLayout.getHeight(20)),
              const AppTicketsTabs(
                firstTapText: 'Upcoming',
                secondTapText: 'Previous',
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticketInfo: ticketList.first,
                  isColor: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
