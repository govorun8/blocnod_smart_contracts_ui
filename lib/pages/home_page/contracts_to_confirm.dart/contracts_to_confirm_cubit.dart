import 'package:blocnod_smart_contracts_ui/pages/home_page/contracts_to_confirm.dart/contracts_to_confirm_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/contracts_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContractsToConfirmCubit extends Cubit<ContractsToConfirmState> {
  ContractsToConfirmCubit() : super(ContractsToConfirmState.loading());

  final ContractsController contractsController = getIt<ContractsController>();
  final UserRepository userController = getIt<UserRepository>();

  Future<void> init() async {
    final user = userController.user;

    final contractsToAgree =
        await contractsController.getUserSmartContractsToAgree(user.id);

    if (contractsToAgree == null) {
      ContractsToConfirmState.loading();
    } else if (contractsToAgree.isEmpty) {
      emit(ContractsToConfirmState.error());
    } else {
      emit(ContractsToConfirmState.inited(
        contractsToConfirmationList: contractsToAgree,
        user: user,
      ));
    }
  }

  Future<void> confirmContract(String contractId) async {
    state.maybeMap(
        inited: (value) async {
          final result = await contractsController.confirmContract(
            contractId,
            value.user.id,
          );
          if (result == ResponseStatus.done) {
            final contractsToAgree =
                await contractsController.getUserSmartContractsToAgree(
              value.user.id,
            );
            if (contractsToAgree == null) {
              ContractsToConfirmState.loading();
            } else if (contractsToAgree.isEmpty) {
              emit(ContractsToConfirmState.error());
            } else {
              emit(ContractsToConfirmState.inited(
                contractsToConfirmationList: contractsToAgree,
                user: value.user,
              ));
            }
          }
        },
        orElse: () {});
  }

  Future<void> rejectContract(String contractId) async {
    state.maybeMap(
        inited: (value) async {
          final result = await contractsController.rejectContract(
            contractId,
            value.user.id,
          );
          if (result == ResponseStatus.done) {
            final contractsToAgree =
                await contractsController.getUserSmartContractsToAgree(
              value.user.id,
            );
            if (contractsToAgree == null) {
              ContractsToConfirmState.loading();
            } else if (contractsToAgree.isEmpty) {
              emit(ContractsToConfirmState.error());
            } else {
              emit(ContractsToConfirmState.inited(
                contractsToConfirmationList: contractsToAgree,
                user: value.user,
              ));
            }
          }
        },
        orElse: () {});
  }
}
