import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  int index = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    var args = ModalRoute.of(context)!.settings.arguments as Map<String, int>?;
    if (args != null) {
      var idx = args["index"] ?? 0;

      setState(() {
        index = idx;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text('Ticket', style: AppStyles.headLine1),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(
              bottom: 20,
              right: 20,
              left: 20,
              top: 10,
            ),
            children: [
              const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[index], isUnColored: true),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 20,
                ),
                color: AppStyles.ticketWhite,
                width: size.width * 0.85,
                child: Column(
                  children: [
                    const AppLayoutBuilderWidget(
                      randomDivider: 10,
                      width: 5,
                      isUnColored: true,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: 'Passenger',
                          isUnColored: true,
                        ),
                        AppColumnTextLayout(
                          topText: "4567 456456",
                          bottomText: 'Passport',
                          align: CrossAxisAlignment.end,
                          isUnColored: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      randomDivider: 10,
                      width: 5,
                      isUnColored: true,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "2345 676867967",
                          bottomText: 'Number of e-ticket',
                          isUnColored: true,
                        ),
                        AppColumnTextLayout(
                          topText: "BS456FG",
                          bottomText: 'Booking code',
                          align: CrossAxisAlignment.end,
                          isUnColored: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      randomDivider: 10,
                      width: 5,
                      isUnColored: true,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppMedia.visaCard, scale: 11),
                                Text(" **** 2463", style: AppStyles.headLine3),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text("Payment method", style: AppStyles.headLine4),
                          ],
                        ),
                        const AppColumnTextLayout(
                          topText: "\$768.94",
                          bottomText: 'Price',
                          align: CrossAxisAlignment.end,
                          isUnColored: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppLayoutBuilderWidget(
                      randomDivider: 10,
                      width: 5,
                      isUnColored: true,
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketWhite,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Center(
                      child: BarcodeWidget(
                        height: 70,
                        data: 'http://www.dbestech.com',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: AppStyles.textColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[index]),
              ),
            ],
          ),
          Positioned(
            left: 14,
            top: size.height / 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: AppStyles.textColor),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppStyles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 14,
            top: size.height / 2,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: AppStyles.textColor),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppStyles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
