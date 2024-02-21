import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../config/extensions/resposive.dart';
import 'image_widget.dart';

class BannerView extends StatelessWidget {
  final List<String> bannerList;
  final double height;
  final double borderRadius;
  final VoidCallback? onTap;
  const BannerView({
    super.key,
    this.bannerList = const [],
    this.height = 130,
    this.borderRadius = 20,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.wp(80),
      height: bannerList.isEmpty ? 0 : height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CarouselSlider.builder(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: false,
            viewportFraction: 1,
            disableCenter: true,
            autoPlayInterval: const Duration(seconds: 7),
            onPageChanged: (index, reason) {},
          ),
          itemCount: bannerList.length,
          itemBuilder: (context, index, _) {
            return InkWell(
              onTap: onTap,
              child: ImageWidget(
                image: bannerList[index],
                placeholder: bannerList[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
