import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../../../../config/theme/app_colors.dart';
import '../../../global/widgets/components/glass_box.dart';
import '../../../global/widgets/components/image_widget.dart';

class PenkaItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback? onTap;
  const PenkaItem({
    super.key,
    required this.image,
    required this.title,
    this.subtitle = '',
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NeonContainer(
      spreadColor: color,
      borderRadius: BorderRadius.circular(30),
      lightBlurRadius: 10,
      lightSpreadRadius: 2,
      borderColor: color,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 300,
          height: 180.0,
          child: Stack(
            children: <Widget>[
              ImageWidget(
                image: image,
                height: double.maxFinite,
                width: double.maxFinite,
                fit: BoxFit.fill,
                radius: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 40),
                alignment: Alignment.topLeft,
                child: GlassBox(
                  redius: 10.0,
                  width: double.maxFinite,
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Text(
                                    title,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      color: AppColors.backgroundColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Text(
                                    subtitle,
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
