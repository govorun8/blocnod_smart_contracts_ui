import 'package:blocnod_smart_contracts_ui/components/custom_app_bar.dart';
import 'package:blocnod_smart_contracts_ui/components/custom_bottom_nav_bar.dart';
import 'package:blocnod_smart_contracts_ui/pages/home_page/home_page_view.dart';
import 'package:blocnod_smart_contracts_ui/pages/money_page/money_page.dart';
import 'package:flutter/material.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(
          double.maxFinite,
          50,
        ),
        child: CustomAppBar(
          selectedIndex: selectedIndex,
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [HomePageView(), MoneyPageView()],
      ),
      bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: selectedIndex,
          onTap: (value) {
            selectedIndex.value = value;
          }),
    );
  }
}
