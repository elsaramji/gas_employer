part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}


class LoginLoading extends LoginState {}
class LoginSuccess extends LoginState {
  final String verifyId;
  LoginSuccess(this.verifyId);
}
class VerifyLoadingSuccess extends LoginState {}
class LoginError extends LoginState {
  final String error;
  LoginError(this.error);

}