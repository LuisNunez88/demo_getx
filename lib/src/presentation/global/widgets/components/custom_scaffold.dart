import 'package:flutter/material.dart' hide BoxShadow, BoxDecoration;

import '../../../../config/helpers/inset_shadow.dart';
import '../../../../config/theme/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final double topMargin;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? floatingActionButton;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  const CustomScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.topMargin = 10,
    this.bottomNavigationBar,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
    this.floatingActionButtonAnimator,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Column(
        children: [
          appBar ?? const SizedBox(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: topMargin),
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  color: AppColors.backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadowColor,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 10),
                      inset: true,
                    ),
                  ]),
              child: body,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButton: floatingActionButton,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
