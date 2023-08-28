import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoneyPageView extends StatefulWidget {
  const MoneyPageView({super.key});

  @override
  State<MoneyPageView> createState() => MoneyPageState();
}

class MoneyPageState extends State<MoneyPageView> {
  S translate = getIt<S>();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Material(
      color: theme.canvasColor,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).go('/money/contract');
        },
        child: Center(
          child: Container(
            width: 100,
            height: 50,
            color: theme.primaryColor,
            child: Center(
              child: Text(
                translate.new_smart_contract,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
