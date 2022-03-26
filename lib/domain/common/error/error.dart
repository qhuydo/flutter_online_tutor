
class NoValueError extends Error {
  final dynamic value;

  NoValueError(this.value);

  @override
  String toString() {
    return Error.safeToString('Value object contains failure: $value');
  }
}