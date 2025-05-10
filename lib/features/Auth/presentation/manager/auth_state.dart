part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SendOTPLoading extends AuthState {}

final class SendOTPError extends AuthState {
  final String errMessage;
  SendOTPError(this.errMessage);
}

final class SendOTPSuccess extends AuthState {}
//********** */

final class VerifyOTPLoading extends AuthState {}

final class VerifyOTPError extends AuthState {
  final String errMessage;
  VerifyOTPError(this.errMessage);
}

final class VerifyOTPSuccess extends AuthState {}
//****** */

final class LogoutLoading extends AuthState {}

final class LogoutError extends AuthState {
  final String errMessage;
  LogoutError(this.errMessage);
}

final class LogoutSuccess extends AuthState {}
