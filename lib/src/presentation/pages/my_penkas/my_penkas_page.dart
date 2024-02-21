import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/widgets/components/custom_scaffold.dart';
import 'logic/my_penkas_controller.dart';
import 'widgets/empty_penkas.dart';
import 'widgets/my_penkas_list.dart';

class MyPenkasPage extends GetView<MyPenkasController> {
  const MyPenkasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: GetBuilder<MyPenkasController>(
        init: MyPenkasController(),
        initState: (_) {},
        builder: (ctrl) {
          if (ctrl.penkasList.isEmpty) {
            return const CustomScaffold(
              body: EmptyPenkas(),
            );
          }

          return const MyPenkasList();
        },
      ),
    );
  }
}
