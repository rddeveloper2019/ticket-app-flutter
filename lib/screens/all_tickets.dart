import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text('All Tickets'),
        backgroundColor: AppStyles.bgColor,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children:
                  ticketList
                      .map(
                        (singleTicket) => TicketView(
                          ticket: singleTicket,
                          isWholeScreen: true,
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
