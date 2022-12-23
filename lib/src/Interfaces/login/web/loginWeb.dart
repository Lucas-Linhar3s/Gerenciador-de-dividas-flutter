import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/login/components/modalLoginWidget.dart';

final routesConfig = {
  '/': (context) => const LoginWeb(),
  '/teste': (context) => const Center(child: Text("Testando!!!!")),
  '/seila': (context) => const Center(child: Text("Home!!!!")),
};

class LoginWeb extends StatelessWidget {
  const LoginWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ModalLogin(),
      ),
    );
  }
}
