import 'package:flutter/material.dart';

class AuthState extends ChangeNotifier {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthError extends AuthState {
  final String errorMessage;

  AuthError(this.errorMessage);
}

class UnAuthenticated extends AuthState{}