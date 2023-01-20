import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginRequestedEvent>(_loginRequest);
    on<LoginCanceledEvent>(_loginCanceled);
    on<RegisterRequestedEvent>(_registerRequested);
    on<RegisterCanceledEvent>(registerCanceled);
  }

  void _loginRequest(LoginRequestedEvent event, Emitter<LoginState> emit) {}

  void _loginCanceled(LoginCanceledEvent event, Emitter<LoginState> emit) {}

  void _registerRequested(
      RegisterRequestedEvent event, Emitter<LoginState> emit) {}

  void registerCanceled(
      RegisterCanceledEvent event, Emitter<LoginState> emit) {}
}
