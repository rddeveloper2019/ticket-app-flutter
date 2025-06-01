import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({
    super.key,
    required this.ticket,
    this.isWholeScreen = false,
    this.isUnColored = false,
  });

  final Map<String, dynamic> ticket;
  final bool isWholeScreen;
  final bool isUnColored;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 166,
      child: Container(
        margin: EdgeInsets.only(right: isWholeScreen ? 0 : 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isUnColored
                    ? AppStyles.ticketWhite
                    : AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),

              child: Column(
                children: [
                  //show dep dest codes with plane icon
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket["from"]["code"],
                        isUncolored: isUnColored,
                      ),
                      Expanded(child: Container()),
                      BigDot(isUncolored: isUnColored),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDivider: 5),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isUnColored
                                      ? AppStyles.planeUncolored
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isUncolored: isUnColored),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        isUncolored: isUnColored,
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  //show dep dest names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                          isUnColored: isUnColored,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket["flying_time"],
                        align: TextAlign.center,
                        isUnColored: isUnColored,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                          isUnColored: isUnColored,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isUnColored
                  ? AppStyles.ticketWhite
                  : AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isUnColored: isUnColored),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
                      color: AppStyles.bgColor,
                    ),
                  ),
                  BigCircle(isRight: true, isUnColored: isUnColored),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: isUnColored
                    ? AppStyles.ticketWhite
                    : AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isUnColored ? 0 : 21),
                  bottomRight: Radius.circular(isUnColored ? 0 : 21),
                ),
              ),

              child: Column(
                children: [
                  //show dep dest codes with plane icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket["date"],
                        bottomText: 'Date',
                        isUnColored: isUnColored,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: 'Departure time',
                        align: CrossAxisAlignment.center,
                        isUnColored: isUnColored,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(),
                        bottomText: 'Number',
                        align: CrossAxisAlignment.end,
                        isUnColored: isUnColored,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
