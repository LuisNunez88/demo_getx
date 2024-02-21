import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/extensions/resposive.dart';
import '../../../../config/helpers/images.dart';
import '../../../../config/router/routes.dart';
import '../../../global/widgets/components/banner_view.dart';
import '../../../global/widgets/components/custom_scroller.dart';
import '../../create_penka/create_penka_page.dart';

class EmptyPenkas extends StatelessWidget {
  const EmptyPenkas({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomScroller(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const BannerView(
              bannerList: [
                '${Images.bannersUrl}banner1.jpeg',
                '${Images.bannersUrl}banner2.jpg',
                '${Images.bannersUrl}banner3.jpeg',
                '${Images.bannersUrl}banner4.png',
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: context.wp(50),
              height: 30,
              child: const Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'msg_create_penka'.tr,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            OpenContainer(
              useRootNavigator: true,
              routeSettings: RouteSettings(name: Routes.createPenka.path),
              transitionType: ContainerTransitionType.fadeThrough,
              openColor: Theme.of(context).colorScheme.background,
              closedColor: Colors.transparent,
              closedElevation: 6.0,
              closedShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              openShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              openBuilder: (BuildContext context, VoidCallback _) {
                return const CreatePenkaPage();
              },
              closedBuilder:
                  (BuildContext context, VoidCallback openContainer) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 45),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: openContainer,
                  child: Text('create_penka'.tr),
                );
              },
            ),
            SizedBox(
              height: context.hp(2),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(300, 45),
                // backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                debugPrint('Received click');
              },
              child: Text('join_penka'.tr),
            ),
            SizedBox(
              height: context.hp(2),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 45),
                // backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {},
              child: Text('how_to_play'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
