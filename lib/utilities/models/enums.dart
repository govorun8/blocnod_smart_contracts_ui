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
  payment,
  delivery,
}

enum SmartContractStatus {
  created,
  inProgress,
  done,
  error,
}
