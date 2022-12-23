import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/recovery/componets/formRecoveryWidget.dart';
import 'package:projeto/src/Interfaces/recovery/componets/modalRecoveryWidget.dart';

class RecoveryWeb extends StatelessWidget {
  const RecoveryWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(64, 155, 255, 1),
      body: Align(
        alignment: AlignmentDirectional(0.9, 0),
        child: ModalRecovery(),
      ),
    );
  }
}
