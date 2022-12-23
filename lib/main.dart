import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/login/components/modalLoginWidget.dart';
import 'package:projeto/src/Interfaces/login/web/loginWeb.dart';
import 'package:projeto/src/Interfaces/recovery/componets/formRecoveryWidget.dart';
import 'package:projeto/src/Interfaces/recovery/componets/modalRecoveryWidget.dart';
import 'package:projeto/src/Interfaces/recovery/web/recoveryWeb.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Projeto",
      initialRoute: "/login",
      routes: routesConfig,
      // routes: routesConfig,
    );
  }
}

final routesConfig = {
  "/login": (context) => const LoginWeb(),
  "/recovery": (context) => const RecoveryWeb(),
  "/home": (context) => const Center(child: Text("Home!!!")),
};

void main(List<String> args) {
  runApp(const MyApp());
}
