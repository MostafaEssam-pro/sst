part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginGetSuccessState extends LoginState {
  final LoginModel SuccessstatusModel;

  LoginGetSuccessState(this.SuccessstatusModel);
}

class LoginGetLoadingState extends LoginState {}

class LoginGetErrorState extends LoginState {
  // final StatusModel ErrorstatusModel;
  //
  // LoginGetSuccessState(this.ErrorstatusModel);
}
