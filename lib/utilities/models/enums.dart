enum AuthentificationStatus {
  authentificated,
  wrongCredentials,
  serverError,
  noInternet,
}

enum ResponseStatus {
  done,
  failed,
  declined,
  serverError,
  noInternet,
}

enum SmartContractType {
  rent,
  transportation,
}

enum SmartContractStatus {
  created,
  inProgress,
  finished,
  canceled,
  creatorConfirmation,
  executorConfirmation,
  executorAgreement,
  creatorAgreement,
}
