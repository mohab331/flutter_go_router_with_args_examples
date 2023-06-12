import 'package:flutter_go_router/cubit/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void login(String email, String password) async {
    // Simulate an API call or any asynchronous operation
    emit(AuthLoading());

    // Simulate success or failure
    await Future.delayed(const Duration(seconds: 2));

      emit(AuthSuccess());

  }

  void emitUnAuthorized()=>emit(UnAuthenticated(),);
}