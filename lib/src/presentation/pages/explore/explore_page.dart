import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../config/extensions/resposive.dart';
import '../../../config/extensions/string_extensions.dart';
import '../../global/widgets/components/custom_scaffold.dart';
import '../../global/widgets/components/loading_widget.dart';
import 'logic/explore_controller.dart';
import 'widgets/penka_item.dart';

class ExplorePage extends GetView<ExploreController> {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: GetBuilder<ExploreController>(
        init: ExploreController(),
        initState: (_) {},
        builder: (ctrl) {
          if (ctrl.isLoading) {
            return const LoadingWidget(show: true);
          } else if (ctrl.penkasList.isEmpty) {
            return const Center(
              child: Text("No penkas found"),
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.only(
                top: 20, left: 20, right: 20, bottom: 60 + kToolbarHeight),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: context.isDesktop
                  ? 4
                  : context.isTablet
                      ? 2
                      : context.isPhone
                          ? 1
                          : 2,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemCount: ctrl.penkasList.length,
            itemBuilder: (BuildContext context, int index) {
              final penka = ctrl.penkasList[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: PenkaItem(
                  image: penka.template?.banner ?? '',
                  title: penka.name ?? '',
                  color: penka.template?.competition?.color?.hexToColor() ??
                      Colors.black,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
