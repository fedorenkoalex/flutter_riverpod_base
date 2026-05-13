sealed class Result<T> {
  const Result();

  factory Result.success(T data) => Success(data: data);

  factory Result.failure(Exception exception, StackTrace? stackTrace) =>
      Failure(exception: exception, stackTrace: stackTrace);

  bool get isSuccess => this is Success<T>;
  bool get isFailure => this is Failure<T>;
}

class Success<T> extends Result<T> {
  final T data;

  Success({required this.data});
}

class Failure<T> extends Result<T> {
  final Exception exception;
  final StackTrace? stackTrace;

  Failure({required this.exception, this.stackTrace});
}
