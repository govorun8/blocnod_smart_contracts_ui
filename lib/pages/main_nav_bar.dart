import 'package:blocnod_smart_contracts_ui/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({
    super.key,
    required this.location,
    required this.child,
  });

  final String location;
  final Widget child;
  @override
  State<MainNavigationBar> createState() => MainNavigationBarState();
}

class MainNavigationBarState extends State<MainNavigationBar> {
  late final ValueNotifier<int> selectedIndex;
  late final PageController pageController;

  @override
  void initState() {
    selectedIndex = ValueNotifier(0);
    pageController = PageController(initialPage: selectedIndex.value);
    selectedIndex.addListener(() {
      pageController.animateToPage(
        selectedIndex.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    });
    super.initState();
  }

  static List<CustomNavBarItem> tabs = [
    CustomNavBarItem(
      icon: SvgPicture.asset(
        'assets/bottom_bar/home.svg',
        width: 50,
        height: 50,
      ),
      initialLocation: '/',
      label: 'home',
    ),
    CustomNavBarItem(
      icon: SvgPicture.asset(
        'assets/bottom_bar/money.svg',
        width: 50,
        height: 50,
      ),
      initialLocation: '/money',
      label: 'money',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    late int currentIndex;
    List<String> splitedPath = widget.location.split('/');
    switch (splitedPath[1]) {
      case (''):
        currentIndex = 0;
        break;
      case ('money'):
        currentIndex = 1;
        break;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size(
          double.maxFinite,
          50,
        ),
        child: CustomAppBar(
          location: widget.location,
        ),
      ),
      body: SafeArea(
        child: widget.child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _goToOtherTab(context, index, currentIndex);
        },
        backgroundColor: Theme.of(context).splashColor,
        currentIndex: currentIndex,
        items: tabs,
      ),
    );
  }

  _goToOtherTab(BuildContext context, int index, int currentIndex) {
    if (index == currentIndex) return;
    GoRouter router = GoRouter.of(context);
    String location = tabs[index].initialLocation;

    setState(() {
      currentIndex = index;
    });
    router.go(location);
  }
}

class CustomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;
  const CustomNavBarItem({
    required this.initialLocation,
    required Widget icon,
    String? label,
    Widget? activeIcon,
  }) : super(
          icon: icon,
          label: label,
          activeIcon: activeIcon ?? icon,
        );
}
