import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  const AppLayoutBuilderWidget({
    super.key,
    required this.randomDivider,
    this.width = 3,
    this.color = Colors.white,
  });

  final int randomDivider;
  final double width;
  final Color color;
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
              child: DecoratedBox(decoration: BoxDecoration(color: color)),
            ),
          ),
        );
      },
    );
    ;
  }
}
