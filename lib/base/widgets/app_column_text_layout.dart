import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    this.align = CrossAxisAlignment.start,
    this.isUnColored = false,
  });

  final String topText;
  final String bottomText;
  final CrossAxisAlignment align;
  final bool isUnColored;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(
          topText,
          style: isUnColored
              ? AppStyles.headLine3
              : AppStyles.headLine3.copyWith(color: Colors.white),
        ),
        Text(
          bottomText,
          style: isUnColored
              ? AppStyles.headLine4
              : AppStyles.headLine4.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
