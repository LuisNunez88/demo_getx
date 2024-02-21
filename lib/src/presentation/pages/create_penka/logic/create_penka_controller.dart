import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/entities/penka_template.dart';
import '../../../../inject_repositories.dart';

class CreatePenkaController extends GetxController {
  Map<String, List<PenkaTemplate>>? categoryList;
  List<Match>? matchesList;
  bool isLoading = false;

  final _repo = Repositories.penkasRepository;
  final flatUrl =
      'https://www.google.com/search?gs_ssp=eJzj4tDP1TcwyzEyMmD04i5KTcxRyE1MKcpMAQBJRQbP&q=real+madrid&rlz=1C5CHFA_enEC1011EC1011&oq=real&gs_lcrp=EgZjaHJvbWUqCggDEC4YsQMYgAQyBggAEEUYOTIGCAEQIxgnMgwIAhAjGCcYgAQYigUyCggDEC4YsQMYgAQyCggEEAAYsQMYgAQyCggFEC4YsQMYgAQyCggGEC4YsQMYgAQyBggHEEUYQdIBCDM5ODVqMGo5qAIAsAIA&sourceid=chrome&ie=UTF-8#sie=t;/m/06l22;2;/m/09gqx;mt;fp;1;;;';

  @override
  void onInit() {
    super.onInit();
    loadData(Get.context!);
  }

  loadData(BuildContext context) async {
    isLoading = true;
    final response = await _repo.getTemplates();
    response.when(
      left: (error) {
        isLoading = false;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error.message ?? 'Something went wrong'),
          ),
        );
      },
      right: (r) {
        categoryList = groupBy<PenkaTemplate, String>(
            r, (template) => template.type.toString());
        isLoading = false;
      },
    );
    update();
  }
}
