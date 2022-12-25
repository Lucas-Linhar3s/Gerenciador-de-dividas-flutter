import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/login/web/loginWeb.dart';
import 'package:projeto/src/Interfaces/recovery/web/recoveryWeb.dart';
import 'package:projeto/src/Shared/components/sideMenuPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Projeto",
      initialRoute: "/login",
      routes: routesConfig,
    );
  }
}

final routesConfig = {
  "/login": (context) => const LoginWeb(),
  "/recovery": (context) => const RecoveryWeb(),
  "/home": (context) => const SideMenuPage(),
};

void main(List<String> args) {
  runApp(const MyApp());
}
