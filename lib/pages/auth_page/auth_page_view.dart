import 'package:blocnod_smart_contracts_ui/components/custom_text_field.dart';
import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
import 'package:blocnod_smart_contracts_ui/pages/auth_page/auth_page_cubit.dart';
import 'package:blocnod_smart_contracts_ui/pages/auth_page/auth_page_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthPageView extends StatefulWidget {
  const AuthPageView({super.key});

  @override
  State<AuthPageView> createState() => AuthPageViewState();
}

class AuthPageViewState extends State<AuthPageView> {
  S translate = getIt<S>();
  final _cubit = AuthPageCubit();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return BlocProvider(
      create: (context) => _cubit..init(),
      child: Material(
        color: Colors.white,
        child: BlocBuilder<AuthPageCubit, AuthPageState>(
          builder: (context, state) {
            return state.maybeMap(
              inited: (value) {
                return buildTextFields(
                  theme,
                  value.id,
                  value.name,
                  value.email,
                  value.balance,
                );
              },
              finished: (value) {
                GoRouter.of(context).go('/');
                return const SizedBox.shrink();
              },
              error: (value) {
                return Text(
                  'error',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: Colors.red,
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }

  Widget buildTextFields(
    ThemeData theme,
    String? id,
    String? name,
    String? email,
    String? balance,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            title: 'id',
            hint: translate.id_hint,
            text: id,
            onChanged: (value) {
              _cubit.idChanged(value);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            title: translate.name,
            hint: translate.name_hint,
            text: name,
            onChanged: (value) {
              _cubit.nameChanged(value);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            title: translate.email,
            hint: translate.email_hint,
            text: email,
            onChanged: (value) {
              _cubit.emailChanged(value);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            title: translate.balance,
            hint: translate.balance_hint,
            text: balance,
            onChanged: (value) {
              _cubit.balanceChanged(value);
            },
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              if (id != null &&
                  name != null &&
                  email != null &&
                  balance != null) {
                _cubit.createNewUser(id, name, email, balance);
              }
            },
            child: Center(
              child: Container(
                width: 100,
                height: 50,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    translate.sign_in,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).go('/');
            },
            child: Center(
              child: Container(
                width: 100,
                height: 50,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'cheater',
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
