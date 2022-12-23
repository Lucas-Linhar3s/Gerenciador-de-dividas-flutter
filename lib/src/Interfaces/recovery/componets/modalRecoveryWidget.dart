import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto/src/Interfaces/recovery/componets/formRecoveryWidget.dart';

class ModalRecovery extends StatefulWidget {
  const ModalRecovery({super.key});

  @override
  State<ModalRecovery> createState() => _ModalRecoveryState();
}

class _ModalRecoveryState extends State<ModalRecovery> {
  var _hover = false;

  void _onTap() {
    Navigator.of(context).pushReplacementNamed("/login");
  }

  late final _recogniser = TapGestureRecognizer()..onTap = _onTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
          children: [
            Image.asset(
              "images/resetPassword.gif",
              // "images/Resetpassword.gif",
              height: 850,
              width: 850,
            ),
            const SizedBox(
              width: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 600.0,
              width: 600.0,
              child: Column(
                children: <Widget>[
                  SelectableText.rich(const TextSpan(
                      text: "Recuperar senha",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        height: 4,
                      ))),
                  const SizedBox(
                    height: 15,
                  ),
                  FormRecovery(),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    // alignment: AlignmentDirectional.bottomCenter,
                    height: 50,
                    color: Colors.transparent,
                    child: SelectableText.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                              text: "Lembrou a senha? ",
                              style: TextStyle(fontSize: 16.0)),
                          TextSpan(
                            text: "Entrar",
                            style: TextStyle(
                              fontSize: 16.0,
                              decoration: TextDecoration.underline,
                              color: _hover ? Colors.blue : null,
                            ),
                            mouseCursor: SystemMouseCursors.click,
                            onEnter: (event) => setState(() => _hover = true),
                            onExit: (event) => setState(() => _hover = false),
                            recognizer: _recogniser,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
