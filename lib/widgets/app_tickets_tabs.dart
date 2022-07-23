import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketsTabs extends StatelessWidget {
  const AppTicketsTabs({
    Key? key,
    required this.firstTapText,
    required this.secondTapText,
  }) : super(key: key);
  final String firstTapText;
  final String secondTapText;

  @override
  Widget build(BuildContext context) {
    final Size size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(AppLayout.getWidth(3.5)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xfff4f6fd),
        ),
        child: Row(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getWidth(50))),
                color: Colors.white),
            child: Center(child: Text(firstTapText)),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * 0.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getWidth(50))),
                color: Colors.transparent),
            child: Center(child: Text(secondTapText)),
          )
        ]),
      ),
    );
  }
}
