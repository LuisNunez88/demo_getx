import 'package:flutter/material.dart';
// import 'package:sticky_and_expandable_list/sticky_and_expandable_list.dart';

class MatchGroupHeader extends StatelessWidget {
  final String section;
  // final ExpandableSectionContainerInfo containerInfo;
  const MatchGroupHeader({
    super.key,
    required this.section,
    // required this.containerInfo,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'MatchGroupHeader is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
