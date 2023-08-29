import 'package:blocnod_smart_contracts_ui/pages/auth_page/auth_page_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/user_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPageCubit extends Cubit<AuthPageState> {
  AuthPageCubit() : super(AuthPageState.loading());

  final UserController userController = getIt<UserController>();

  Future<void> init() async {
    emit(AuthPageState.inited());
  }

  Future<void> createNewUser(
    String id,
    String name,
    String email,
    String balance,
  ) async {
    final result = await userController.createNewUser(
      id,
      name,
      balance,
      email,
    );
    if (result == ResponseStatus.done) {
      emit(AuthPageState.finished(status: result));
    } else {
      emit(AuthPageState.error());
    }
  }

  Future<void> idChanged(String id) async {
    state.maybeMap(
      inited: (value) {
        emit(AuthPageState.inited(
            id: id,
            name: value.name,
            email: value.email,
            balance: value.balance));
      },
      orElse: () {},
    );
  }

  Future<void> nameChanged(String name) async {
    state.maybeMap(
      inited: (value) {
        emit(AuthPageState.inited(
            id: value.id,
            name: name,
            email: value.email,
            balance: value.balance));
      },
      orElse: () {},
    );
  }

  Future<void> emailChanged(String email) async {
    state.maybeMap(
      inited: (value) {
        emit(AuthPageState.inited(
            id: value.id,
            name: value.name,
            email: email,
            balance: value.balance));
      },
      orElse: () {},
    );
  }

  Future<void> balanceChanged(String balance) async {
    state.maybeMap(
      inited: (value) {
        emit(AuthPageState.inited(
            id: value.id,
            name: value.name,
            email: value.email,
            balance: balance));
      },
      orElse: () {},
    );
  }
}
