import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../global/widgets/components/custom_scaffold.dart';
import '../../global/widgets/components/loading_widget.dart';
import 'logic/create_penka_controller.dart';
import 'views/categories_view.dart';

class CreatePenkaPage extends GetView<CreatePenkaController> {
  const CreatePenkaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreatePenkaController>(
      init: CreatePenkaController(),
      builder: (_) {
        return CustomScaffold(
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'create_penka'.tr,
            ),
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0,
          ),
          body: Stack(
            children: [
              const CategoriesView(),
              GetBuilder<CreatePenkaController>(
                builder: (ctrl) {
                  return LoadingWidget(
                    show: ctrl.isLoading,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
