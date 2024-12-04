import 'package:equatable/equatable.dart';

class AppException extends Equatable implements Exception {
  const AppException({
    required this.message,
    this.statusCode,
    this.identifier,
  });
  final String message;
  final int? statusCode;
  final String? identifier;

  @override
  List<Object?> get props => [
        message,
        statusCode,
        identifier,
      ];
}
