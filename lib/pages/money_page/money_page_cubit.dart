import 'package:blocnod_smart_contracts_ui/pages/money_page/money_page_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/contracts_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoneyPageCubit extends Cubit<MoneyPageState> {
  MoneyPageCubit() : super(MoneyPageState.loading());

  final ContractsController contractsController = getIt<ContractsController>();
  final UserRepository userController = getIt<UserRepository>();

  Future<void> init() async {
    final user = userController.user;

    final userSmartContracts =
        await contractsController.getUserSmartContracts(user.id);

    if (userSmartContracts != null) {
      emit(MoneyPageState.inited(
        contractsList: userSmartContracts,
        user: user,
      ));
    } else {
      emit(MoneyPageState.loading());
    }
  }
}
