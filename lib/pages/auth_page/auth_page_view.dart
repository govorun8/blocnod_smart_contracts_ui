// import 'package:blocnod_smart_contracts_ui/generated/l10n.dart';
// import 'package:blocnod_smart_contracts_ui/pages/auth_page/auth_page_cubit.dart';
// import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AuthPageView extends StatefulWidget {
//   const AuthPageView({super.key});

//   @override
//   State<AuthPageView> createState() => AuthPageViewState();
// }

// class AuthPageViewState extends State<AuthPageView> {
//   final _cubit = AuthPageCubit();

//   @override
//   Widget build(BuildContext context) {
//     S translate = getIt<S>();
//     ThemeData theme = Theme.of(context);

//     return BlocProvider(
//       create: (context) => _cubit..init(),
//       child: Material(
//         color: Colors.white,
//         child: GestureDetector(
//           onTap: () {},
//           child: Center(
//             child: Container(
//               width: 100,
//               height: 50,
//               color: Colors.blue,
//               child: Center(
//                 child: Text(
//                   translate.sign_in,
//                   style: theme.textTheme.bodyMedium,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
