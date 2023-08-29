import 'package:blocnod_smart_contracts_ui/components/custom_confirm_button.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RequestDonePage extends StatelessWidget {
  const RequestDonePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final S translate = getIt<S>();
    final ThemeData theme = Theme.of(context);
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: theme.canvasColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                translate.contract_go_on_confirmation,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Image.asset(
              'assets/money/clock.png',
              width: 125,
            ),
            const Spacer(),
            CustomConfirmButton(
              title: translate.to_home,
              theme: theme,
              onTap: () {
                GoRouter.of(context).go('/');
              },
            ),
            const SizedBox(
              height: 75,
            )
          ],
        ),
      ),
    );
  }
}
