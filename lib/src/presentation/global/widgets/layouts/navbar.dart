import 'package:flutter/material.dart';

import '../../../../config/helpers/images.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBackButton;
  final bool centerTitle;
  final double? fontSize;
  final Widget? leading;
  final VoidCallback? onBackPressed;
  const Navbar({
    super.key,
    this.title = '',
    this.showBackButton = true,
    this.centerTitle = false,
    this.onBackPressed,
    this.fontSize,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(150),
      child: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: centerTitle,
        excludeHeaderSemantics: true,
        titleSpacing: 0,
        toolbarHeight: 80,
        leading: leading,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title != null || title == ''
                ? Hero(
                    tag: 'logo',
                    child: Image.asset(
                      Images.logo,
                      height: kToolbarHeight,
                      fit: BoxFit.cover,
                    ),
                  )
                : Text(
                    title!,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: fontSize,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                    maxLines: 1,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
