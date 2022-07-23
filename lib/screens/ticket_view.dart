import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key, required this.ticketInfo, this.isColor})
      : super(key: key);
  final Map<String, dynamic> ticketInfo;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      height: AppLayout.getHeight(200),
      width: size.width * 0.90,
      child: Container(
          padding: EdgeInsets.only(right: AppLayout.getWidth(16)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /*
                showing the blue part of the card/ticker
                */
              Container(
                decoration: BoxDecoration(
                    color: isColor == null || isColor! == false
                        ? const Color(0xff526799)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getWidth(21)),
                      topRight: Radius.circular(AppLayout.getWidth(21)),
                    )),
                padding: EdgeInsets.all(AppLayout.getWidth(16)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(ticketInfo['from']['code'],
                              style: isColor == null || isColor! == false
                                  ? Styles.headLineStyle3
                                  : Styles.headLineStyle3),
                          Expanded(child: Container()),
                          const ThickContainer(isColor: true),
                          Expanded(
                              child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: LayoutBuilder(
                                  builder: (context, constraints) => Flex(
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: isColor == null ||
                                                        isColor! == false
                                                    ? Colors.white
                                                    : const Color(0xff8accf7))),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null || isColor! == false
                                        ? Colors.white
                                        : const Color(0xff8accf7),
                                  ),
                                ),
                              ),
                            ],
                          )),
                          const ThickContainer(isColor: true),
                          Expanded(child: Container()),
                          Text(
                            ticketInfo['to']['code'],
                            style: isColor == null || isColor! == false
                                ? Styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle3,
                          ),
                        ],
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: AppLayout.getWidth(100),
                            child: Text(
                              ticketInfo['from']['name'],
                              style: isColor == null || isColor! == false
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            ),
                          ),
                          Text(
                            ticketInfo['flying_time'],
                            style: isColor == null || isColor! == false
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                          SizedBox(
                            width: AppLayout.getWidth(100),
                            child: Text(
                              ticketInfo['to']['name'],
                              textAlign: TextAlign.end,
                              style: isColor == null || isColor! == false
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
              /*
                showing the orange part of the card/ticker
                */
              Container(
                color: Styles.orangeColor,
                child: Row(children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight:
                                    Radius.circular(AppLayout.getWidth(10)),
                                bottomRight:
                                    Radius.circular(AppLayout.getWidth(10))))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppLayout.getWidth(12)),
                      child: LayoutBuilder(
                        builder: (context, constraints) => Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              width: AppLayout.getWidth(5),
                              height: AppLayout.getHeight(1),
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color:
                                          isColor == null || isColor! == false
                                              ? Colors.white
                                              : Colors.grey.shade300)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(AppLayout.getWidth(10)),
                                bottomLeft:
                                    Radius.circular(AppLayout.getWidth(10))))),
                  ),
                ]),
              ),
              /*
               bottom part of the oranage card/ticker
                */
              Container(
                decoration: BoxDecoration(
                    color: Styles.orangeColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getWidth(21)),
                      bottomRight: Radius.circular(AppLayout.getWidth(21)),
                    )),
                padding: EdgeInsets.only(
                    left: AppLayout.getWidth(16),
                    right: AppLayout.getWidth(16),
                    bottom: AppLayout.getWidth(16),
                    top: AppLayout.getWidth(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ticketInfo['date'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getWidth(5)),
                            Text(
                              'Date',
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ticketInfo['departure_time'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getWidth(5)),
                            Text(
                              'Departure time',
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${ticketInfo['number']}',
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getWidth(5)),
                            Text(
                              'Number',
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
