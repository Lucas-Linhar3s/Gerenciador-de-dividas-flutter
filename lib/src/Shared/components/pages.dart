import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/dashboard/web/dashboardWeb.dart';

class Pages extends StatelessWidget {
  // Pages({super.key, this.controller});
  PageController controller;

  Pages({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        const DashboardWeb(),
        const Center(child: Text("data")),
      ],
      controller: controller,
    );
  }
}
