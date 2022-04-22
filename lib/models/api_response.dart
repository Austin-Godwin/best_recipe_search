class ApiResponse<T> {
  final T? data;
  final bool hasError;
  final String? errorMessage;

  ApiResponse({this.data, this.errorMessage, this.hasError = false});
}
