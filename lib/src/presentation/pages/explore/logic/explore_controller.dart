import 'package:get/get.dart';

import '../../../../domain/entities/penka_public.dart';
import '../../../../inject_repositories.dart';

class ExploreController extends GetxController {
  List<PenkaPublic> penkasList = [];
  bool isLoading = false;

  final _repo = Repositories.penkasRepository;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    isLoading = true;
    final response = await _repo.getPenkas();
    response.when(
      left: (error) {
        isLoading = false;
        Get.snackbar('Error', error.message ?? 'Something went wrong');
      },
      right: (r) {
        penkasList = r;
        isLoading = false;
      },
    );
    update();
  }
}
