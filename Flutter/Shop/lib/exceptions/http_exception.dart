class HttpExceotion implements Exception {
  final String msg;

  const HttpExceotion(this.msg);

  @override
  String toString() {
    return msg;
  }
}
