import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/dashboard/components/dashboard_component.dart';

class DashboardWeb extends StatelessWidget {
  const DashboardWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Dashboard(),
    );
  }
}


// Column(
//       children: [
//         Flexible(
//           child: Container(
//             color: Colors.blue,
//           ),
//         ),
//         Flexible(
//           flex: 3,
//           child: Container(
//             color: Colors.green,
//           ),
//         ),
//         Flexible(
//           child: Container(
//             height: 100,
//             color: Colors.red,
//           ),
//         ),
//       ],
//     )