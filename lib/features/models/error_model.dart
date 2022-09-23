// ignore_for_file: public_member_api_docs, sort_constructors_first
class ErrorModel implements Exception {
  final String? errorMessage;
  final String? statusCode;
  ErrorModel({
    this.errorMessage,
    this.statusCode,
  });

  @override
  String toString() =>
      'ErrorModel(errorMessage: $errorMessage, statusCode: $statusCode)';
}
