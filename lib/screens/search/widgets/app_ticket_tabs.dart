import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: const Row(
        children: [
          AppTabs(tabTitle: 'Airline Tickets', isActive: true),
          AppTabs(tabTitle: 'Hotels', rightTab: true),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({
    super.key,
    required this.tabTitle,
    this.isActive = false,
    this.rightTab = false,
  });

  final bool isActive;
  final bool rightTab;
  final String tabTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.44,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        borderRadius: rightTab
            ? const BorderRadius.horizontal(right: Radius.circular(50))
            : const BorderRadius.horizontal(left: Radius.circular(50)),
        color: isActive ? Colors.transparent : Colors.white,
      ),
      child: Center(child: Text(tabTitle)),
    );
  }
}
