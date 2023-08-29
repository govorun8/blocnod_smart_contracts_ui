import 'package:blocnod_smart_contracts_ui/utilities/injection_conf/injection.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:blocnod_smart_contracts_ui/utilities/models/user/user_model.dart';
import 'package:blocnod_smart_contracts_ui/utilities/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserController {
  late final UserRepository userRepository;

  void init() {
    userRepository = getIt<UserRepository>();
  }

  User get user => userRepository.user;

  Future<ResponseStatus> createNewUser(
      String id, String name, String balance, String email) async {
    double numBalance = double.parse(balance);

    final result =
        await userRepository.createNewUser(id, name, email, numBalance);
    return result;
  }

  Future<ResponseStatus> getUserById(String id) async {
    final result = await userRepository.getUserById(id);
    return result;
  }

  Future<List<String>> getContructorsList() async {
    List<String> contructorsList = [];

    final result = await userRepository.getExecutors();

    if (result != null) {
      for (User user in result) {
        if (user.id != userRepository.user.id) {
          contructorsList.add(user.id);
        }
      }
    }

    return contructorsList;
  }
}
