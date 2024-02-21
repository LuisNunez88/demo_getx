import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import '../../../config/router/routes.dart';
import '../../global/widgets/components/custom_scaffold.dart';
import '../../global/widgets/layouts/navbar.dart';
import '../pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _pageList = <Widget>[
    const MyPenkasPage(),
    const ExplorePage(),
  ];

  int pageIndex = 0;
  void onChangePage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const Navbar(
        centerTitle: true,
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: _pageList[pageIndex],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: OpenContainer(
        useRootNavigator: true,
        routeSettings: RouteSettings(name: Routes.createPenka.path),
        transitionType: ContainerTransitionType.fadeThrough,
        openColor: Theme.of(context).colorScheme.background,
        closedColor: Theme.of(context).colorScheme.secondary,
        closedElevation: 6.0,
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        openShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        openBuilder: (BuildContext context, VoidCallback _) {
          return const CreatePenkaPage();
        },
        closedBuilder: (BuildContext context, VoidCallback openContainer) {
          return FloatingActionButton(
            onPressed: openContainer,
            child: const Icon(FlutterRemix.add_line),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        color: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 16,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
              constraints: const BoxConstraints(
                maxWidth: 300,
              ),
              width: 300,
              height: kBottomNavigationBarHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withAlpha(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      onChangePage(0);
                    },
                    icon: const Icon(FlutterRemix.home_5_line),
                  ),
                  const SizedBox(
                    width: kFloatingActionButtonMargin,
                  ),
                  IconButton(
                    onPressed: () {
                      onChangePage(1);
                    },
                    icon: const Icon(FlutterRemix.user_3_line),
                  ),
                ],
              )),
        ),
        //color of the BottomAppBar
      ),
    );
  }
}
