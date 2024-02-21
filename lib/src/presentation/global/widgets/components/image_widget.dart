import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../config/helpers/images.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final String? placeholder;
  final double radius;
  const ImageWidget({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.placeholder = Images.placeholder,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: FastCachedImage(
        url: image,
        fit: fit ?? BoxFit.cover,
        height: height,
        width: width,
        loadingBuilder: (c, p) {
          return Stack(
            children: [
              Image.asset(
                placeholder ?? Images.placeholder,
                height: height,
                width: width,
                fit: BoxFit.cover,
              ),
              const Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),
              ),
            ],
          );
        },
        errorBuilder: (c, o, s) {
          return Image.asset(
            placeholder ?? Images.placeholder,
            height: height,
            width: width,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
