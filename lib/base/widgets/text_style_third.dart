import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({
    super.key,
    required this.text,
    this.align = TextAlign.start,
    this.isUncolored = false,
  });

  final String text;
  final TextAlign align;
  final bool isUncolored;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isUncolored
          ? AppStyles.headLine3
          : AppStyles.headLine3.copyWith(color: Colors.white),
    );
  }
}
