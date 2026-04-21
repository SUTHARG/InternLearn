import 'package:flutter/material.dart';
import 'package:nexus/features/auth/presentation/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 32),
              Image.asset(
                'assets/images/app_logo.png',
                height: 120,
                width: 200,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 32),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
