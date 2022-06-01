part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class LoginRequestedEvent extends LoginEvent {}
class LoginCanceledEvent extends LoginEvent {}
class RegisterRequestedEvent extends LoginEvent {}
class RegisterCanceledEvent extends LoginEvent {}

