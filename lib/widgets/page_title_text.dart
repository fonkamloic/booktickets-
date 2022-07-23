import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PageTitleText extends StatelessWidget {
  const PageTitleText({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),
    );
  }
}
