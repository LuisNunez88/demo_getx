import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../config/extensions/resposive.dart';

class LoadingWidget extends StatelessWidget {
  final bool show;
  const LoadingWidget({super.key, this.show = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: show ? context.width : 0,
        height: show ? context.height : 0,
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
          child: SpinKitFadingCircle(color: Colors.white),
        ),
      ),
    );
  }
}
