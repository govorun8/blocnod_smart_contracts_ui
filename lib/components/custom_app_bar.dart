import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    required this.selectedIndex,
  });

  final ValueNotifier<int> selectedIndex;

  @override
  State<CustomAppBar> createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  final S translate = getIt<S>();
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
    ThemeData theme = Theme.of(context);
    String? routeName = ModalRoute.of(context)?.settings.name;

    late String title;
    if (routeName == '/nav_bar') {
      switch (index) {
        case (0):
          title = translate.home_page_title;
          break;
        case (1):
          title = translate.money_page_title;
          break;
      }
    } else if (routeName != null) {
      switch (routeName) {
        case ('1234'):
          title = '1234';
          break;
        default:
          title = 'default';
          break;
      }
    }

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      height: 60,
      color: Colors.blue,
      child: Text(
        title,
        style: theme.textTheme.bodyMedium,
      ),
    );
  }
}
