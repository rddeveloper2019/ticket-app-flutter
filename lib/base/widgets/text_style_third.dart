import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  const TextStyleThird({
    super.key,
    required this.text,
    this.align = TextAlign.start,
  });

  final String text;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.headLine3.copyWith(color: Colors.white));
  }
}
