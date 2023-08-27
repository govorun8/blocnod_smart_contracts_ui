import 'package:blocnod_smart_contracts_ui/utilities/models/enums.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthentificationController {
  Future<AuthentificationStatus> trySignIn() async {
    return AuthentificationStatus.wrongCredentials;
  }

  Future<String> getStoredCredential() async {
    return '';
  }
}
