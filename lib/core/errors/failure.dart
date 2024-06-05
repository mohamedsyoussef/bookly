abstract class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() => message;
}

class ServerFailure extends Failure {
  ServerFailure([super.message = 'Server Failure']);
}

class CacheFailure extends Failure {
  CacheFailure([super.message = 'Cache Failure']);
}

class OfflineFailure extends Failure {
  OfflineFailure([super.message = 'Offline Failure']);
}

class UnknownFailure extends Failure {
  UnknownFailure([super.message = 'Unknown Failure']);
}

class AuthenticationFailure extends Failure {
  AuthenticationFailure([super.message = 'Authentication Failure']);
}

class TimeoutFailure extends Failure {
  TimeoutFailure([super.message = 'Timeout Failure']);
}

class PermissionFailure extends Failure {
  PermissionFailure([super.message = 'Permission Denied']);
}

class ValidationFailure extends Failure {
  ValidationFailure([super.message = 'Validation Failure']);
}

class DatabaseFailure extends Failure {
  DatabaseFailure([super.message = 'Database Failure']);
}

class NetworkFailure extends Failure {
  NetworkFailure([super.message = 'Network Failure']);
}

class ApiFailure extends Failure {
  ApiFailure([super.message = 'API Failure']);
}

class InvalidInputFailure extends Failure {
  InvalidInputFailure([super.message = 'Invalid Input']);
}
