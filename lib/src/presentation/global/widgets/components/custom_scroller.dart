import 'package:flutter/material.dart';

import '../../../../config/extensions/resposive.dart';

class CustomScroller extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  const CustomScroller({
    super.key,
    required this.child,
    this.width = 300,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      width: context.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Container(
            width: context.width,
            constraints: BoxConstraints(
              minWidth: width,
              minHeight: height,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
