import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    required this.location,
  });

  final String location;

  @override
  State<CustomAppBar> createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  final S translate = getIt<S>();
  late int index;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    late String title;

    switch (widget.location) {
      case ('/'):
        title = translate.home_page_title;
        break;
      case ('/money'):
        title = translate.money_page_title;
        break;
      case ('/money/contract'):
        title = translate.new_smart_contract;
        break;
    }

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      height: 60,
      color: theme.splashColor,
      child: Text(
        title,
        style: theme.textTheme.bodyMedium,
      ),
    );
  }
}
