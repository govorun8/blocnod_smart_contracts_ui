import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserController {
  late final UserRepository userRepository;

  void init() {
    userRepository = getIt<UserRepository>();
  }

  Future<ResponseStatus> createNewUser(
      String id, String name, String balance, String email) async {
    double numBalance = double.parse(balance);

    final result =
        await userRepository.createNewUser(id, name, email, numBalance);
    return result;
  }
}
