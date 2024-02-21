import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/extensions/string_extensions.dart';
import '../../team_details/team_details_page.dart';
import '../logic/create_penka_controller.dart';
import '../widgets/header_template.dart';
import '../widgets/template_item.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});
  static final ctrl = Get.find<CreatePenkaController>();
  static const urlDemo =
      'https://www.google.com/search?client=safari&rls=en&q=real+madrid&ie=UTF-8&oe=UTF-8#sie=t;/m/06l22;2;/m/09gqx;mt;fp;1;;;';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetBuilder<CreatePenkaController>(
            builder: (_) {
              return const HeaderTemplate(
                title: 'Tournaments',
              );
            },
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: GetBuilder<CreatePenkaController>(
              builder: (ctrl) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ctrl.categoryList?["tournament"]?.length ?? 0,
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (context, index) {
                    final item = ctrl.categoryList?["tournament"]?[index];
                    final hexColor = item?.competition?.color ?? "#000000";
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: TemplateItem(
                        image: item?.banner ?? '',
                        title: item?.name ?? "",
                        subtitle: item?.endDate?.toIso8601String() ?? '',
                        color: hexColor.hexToColor(),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TeamDetailsPage(
                              url: urlDemo,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const HeaderTemplate(
            title: 'Combos',
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: GetBuilder<CreatePenkaController>(
              builder: (ctrl) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ctrl.categoryList?["combo"]?.length ?? 0,
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (context, index) {
                    final item = ctrl.categoryList?["combo"]?[index];
                    final hexColor = item?.competition?.color ?? "#000000";
                    final color = Color(
                        int.parse(hexColor.substring(1, 7), radix: 16) +
                            0xFF000000);
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: TemplateItem(
                        image: item?.banner ?? '',
                        title: item?.name ?? "",
                        subtitle: item?.endDate?.toIso8601String() ?? '',
                        color: color,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const HeaderTemplate(
            title: 'Unique',
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: GetBuilder<CreatePenkaController>(
              builder: (ctrl) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ctrl.categoryList?["unique"]?.length ?? 0,
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (context, index) {
                    final item = ctrl.categoryList?["unique"]?[index];
                    final hexColor = item?.competition?.color ?? "#000000";
                    final color = Color(
                        int.parse(hexColor.substring(1, 7), radix: 16) +
                            0xFF000000);
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: TemplateItem(
                        image: item?.banner ?? '',
                        title: item?.name ?? "",
                        subtitle: item?.endDate?.toIso8601String() ?? '',
                        color: color,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}
