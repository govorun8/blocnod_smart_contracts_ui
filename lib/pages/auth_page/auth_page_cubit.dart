// import 'package:blocnod_smart_contracts_ui/pages/auth_page/auth_page_state.dart';
// import 'package:blocnod_smart_contracts_ui/utilities/controllers/authentification_controller.dart';
// import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
// import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AuthPageCubit extends Cubit<AuthPageState> {
//   AuthPageCubit()
//       : super(AuthPageState.auth(
//           email: '',
//           password: '',
//           isEmailValid: true,
//           isPasswordValid: true,
//         ));

//   final AuthentificationController _authentificationController =
//       getIt<AuthentificationController>();

//   Future<void> init() async {
//     emit(AuthPageState.inProgress());
//     final tokenSingnInResult = await _authentificationController.trySignIn();
//     if (tokenSingnInResult == AuthentificationStatus.authentificated) {
//       emit(AuthPageState.finished(authentificationStatus: tokenSingnInResult));
//     } else {
//       emit(AuthPageState.error(authentificationStatus: tokenSingnInResult));
//     }

//     final storedCredentials =
//         await _authentificationController.getStoredCredential();

//     emit(AuthPageState.auth(
//       email: storedCredentials,
//       password: '',
//       isEmailValid: true,
//       isPasswordValid: true,
//     ));
//   }

//   Future<void> validateEmail(String email) async {
//     state.maybeMap(
//         auth: (value) {
//           bool isEmailValid = true;
// //TODO email validation

//           emit(AuthPageState.auth(
//             email: email,
//             password: value.password,
//             isEmailValid: isEmailValid,
//             isPasswordValid: value.isPasswordValid,
//           ));
//         },
//         orElse: () => ());
//   }

//   Future<void> validatePassword(String password) async {
//     state.maybeMap(
//         auth: (value) {
//           bool isPasswordValid = true;
// //TODO password validation

//           emit(AuthPageState.auth(
//             email: value.email,
//             password: password,
//             isEmailValid: value.isEmailValid,
//             isPasswordValid: isPasswordValid,
//           ));
//         },
//         orElse: () => ());
//   }
// }
