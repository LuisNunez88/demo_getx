import 'package:flutter/material.dart';

class MatchesView extends StatelessWidget {
  const MatchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        // child: GetBuilder<CreatePenkaController>(
        //   builder: (ctrl) {
        //     final matchesList = ctrl.matchesList;
        //     return ExpandableListView(
        //       builder: SliverExpandableChildDelegate<String, SectionedList>(
        //         sectionList: matchesList,
        //         itemBuilder: (context, sectionIndex, itemIndex, index) {
        //           String item = matchesList[sectionIndex].items[itemIndex];
        //           return ListTile(
        //             leading: const CircleAvatar(
        //               child: Text(""),
        //             ),
        //             title: Text(item),
        //           );
        //         },
        //         sectionBuilder: (context, containerInfo) => MatchGroupHeader(
        //           section: matchesList[containerInfo.sectionIndex],
        //           containerInfo: containerInfo,
        //           // onStateChanged: () {
        //           //   //notify ExpandableListView that expand state has changed.
        //           //   WidgetsBinding.instance.addPostFrameCallback(
        //           //     (_) {
        //           //       if (mounted) {
        //           //         setState(() {});
        //           //       }
        //           //     },
        //           //   );
        //           // },
        //         ),
        //       ),
        //     );
        //   },
        // ),
        );
  }
}
