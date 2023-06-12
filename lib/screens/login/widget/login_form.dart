import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_go_router/cubit/auth/auth_cubit.dart';
import 'package:flutter_go_router/cubit/auth/auth_state.dart';
import 'package:flutter_go_router/screens/login/widget/custom_text_form_field.dart';
import 'package:flutter_go_router/utils/extensions/extension_navigation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginForm extends HookWidget {
  LoginForm({
    super.key,
  });

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final authCubit = context.watch<AuthCubit>();

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextFormField(
              controller: emailController,
              hint: 'test@test.com',
              label: 'Email',
            ),
            const SizedBox(height: 16.0),
            CustomTextFormField(
              controller: passwordController,
              hint: '1234',
              label: 'Password',
              isObscure: true,
            ),
            const SizedBox(height: 32.0),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  context.navigator.navigateToHomeUsScreen();
                }
              },
              builder: (context, state) {
                return state is AuthLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ElevatedButton(
                        onPressed: () => onLoginPressed(context,
                            authCubit: authCubit,
                            emailText:'test@test.com',
                            passwordText: '1234'),
                        child: const Text('Login'),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed(
    BuildContext context, {
    required String emailText,
    required String passwordText,
    required AuthCubit authCubit,
  }) {
    FocusScope.of(context).unfocus();
    if (formKey.currentState?.validate() == true) {
      formKey.currentState?.save();
      final email = emailText;
      final password = passwordText;
      authCubit.login(email, password);
    }
  }
}
