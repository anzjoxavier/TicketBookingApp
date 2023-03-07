import 'package:flutter/material.dart';

class AppLayoutBuliderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuliderWidget(
      {super.key, this.isColor, required this.sections, this.width=5});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
              (index) => SizedBox(
                    height: 1,
                    width: width,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.white
                                : Colors.grey.shade300)),
                  )),
        );
      },
    );
  }
}
