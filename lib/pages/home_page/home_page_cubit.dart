import 'package:blocnod_smart_contracts_ui/pages/home_page/home_page_state.dart';
import 'package:blocnod_smart_contracts_ui/utilities/controllers/contracts_controller.dart';
import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.loading());

  final ContractsController contractsController = getIt<ContractsController>();

  Future<void> init() async {
    final userSmartContracts =
        await contractsController.getUserSmartContracts('1');

    if (userSmartContracts != null) {
      emit(HomePageState.inited(contractsList: userSmartContracts));
    } else {
      emit(HomePageState.loading());
    }
  }
}
