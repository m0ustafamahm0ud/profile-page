class ServerException implements Exception {
  final String errorMsg;

  ServerException(this.errorMsg);
}
