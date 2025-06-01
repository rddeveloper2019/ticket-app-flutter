import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget({
    super.key,
    required this.randomDivider,
    this.width = 3,
    this.color = Colors.white,
    this.isUnColored = false,
  });

  final int randomDivider;
  final double width;
  final Color color;
  final bool isUnColored;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final length = (constraints.constrainWidth() / randomDivider).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            length,
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isUnColored ? AppStyles.bgColor : color,
                ),
              ),
            ),
          ),
        );
      },
    );
    ;
  }
}
