import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final ValueNotifier<int> selectedIndex;
  final void Function(int) onTap;

  @override
  State<CustomBottomNavBar> createState() => CustomBottomNavBarState();
}

class CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late int index;

  @override
  void initState() {
    index = widget.selectedIndex.value;
    widget.selectedIndex.addListener(() {
      setState(() {
        index = widget.selectedIndex.value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ThemeData theme = Theme.of(context);

    return SafeArea(
      bottom: true,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        height: 60,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: buildNavBarItemsRow(),
      ),
    );
  }

  Widget buildNavBarItemsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => widget.onTap(0),
          child: Icon(
            Icons.home,
            size: 50,
            color: index == 0 ? Colors.white : Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () => widget.onTap(1),
          child: Icon(
            Icons.monetization_on,
            size: 50,
            color: index == 1 ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
