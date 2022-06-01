part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginInProgressState extends LoginState{}
class LoginSuccessState extends LoginState{}
class LoginFailedState extends LoginState{}
