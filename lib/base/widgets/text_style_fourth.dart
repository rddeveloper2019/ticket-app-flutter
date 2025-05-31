import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  const TextStyleFourth({
    super.key,
    required this.text,
    this.align = TextAlign.start,
  });

  final String text;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.headLine4.copyWith(color: Colors.white),
      textAlign: align,
    );
  }
}
