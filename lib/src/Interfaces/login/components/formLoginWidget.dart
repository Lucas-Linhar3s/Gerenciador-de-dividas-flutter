// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

TextEditingController _controllerEmail = TextEditingController();
TextEditingController _controllerSenha = TextEditingController();

class _CustomFormState extends State<CustomForm> {
  var _hover = false;
  final _formKey = GlobalKey<FormState>();

  void _onTap() {
    Navigator.of(context).pushReplacementNamed("/recovery");
  }

  late final _recogniser = TapGestureRecognizer()..onTap = _onTap;
  bool isVisiblePassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(
                width: 500.0,
                child: TextFormField(
                  controller: _controllerEmail,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    final bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                    if (value == null || value.isEmpty) {
                      return 'Por favor insira um email coreto';
                    } else if (emailValid != true) {
                      return 'Por favor insira um email valido';
                    }
                    return null;
                  },
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: "Insira o seu e-mail",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(06.0),
                    ),
                    suffixIcon: const Icon(Icons.email),
                    labelText: "E-mail",
                    helperText: "@gmail.com  @outlook.com  @yahoo.com  ...",
                    enabled: true,
                  ),
                )),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: 500.0,
              child: Column(
                children: [
                  TextFormField(
                    controller: _controllerSenha,
                    obscureText: isVisiblePassword,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor insira uma senha valida';
                      } else if (value.length < 8) {
                        return 'Senha curta';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Insira sua senha",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(06.0),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisiblePassword = !isVisiblePassword;
                            });
                          },
                          icon: isVisiblePassword
                              ? Icon(Icons.remove_red_eye_rounded)
                              : Icon(Icons.remove_red_eye_outlined)),
                      labelText: "Senha",
                      enabled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: SelectableText.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: "Esqueceu a senha? ",
                          ),
                          TextSpan(
                            text: "Clique Aqui",
                            style: TextStyle(
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
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            // Container(
            //     alignment: const AlignmentDirectional(-1, 0),
            //     child: ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
                width: 100.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          // content: Text('Carregando...'),
                          content: LinearProgressIndicator(color: Colors.blue),
                          // backgroundColor: Colors.white,
                          elevation: 5.0,
                          duration: Duration(milliseconds: 5000),
                        ),
                      );
                    }
                    if (_controllerEmail.text == "Lucas@gmail.com" &&
                        _controllerSenha.text == "123456789") {
                      // // Navigator.pushReplacementNamed(context, "/teste");
                      // Navigator.of(context).pushReplacementNamed("/home");
                      // Navigator.of(context).pushReplacementNamed("/home");
                      Timer(Duration(milliseconds: 4000), () {
                        Navigator.of(context).pushReplacementNamed("/home");
                      });
                    } else
                      (ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Error ao tentar realizar login'),
                          // content: LinearProgressIndicator(color: Colors.blue),
                          // backgroundColor: Colors.white,
                          elevation: 5.0,
                          duration: Duration(milliseconds: 5000),
                        ),
                      ));
                  },
                  child: Text("Entrar"),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10.0),
                    animationDuration: const Duration(milliseconds: 5),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.blue),
                    visualDensity: VisualDensity.comfortable,
                    fixedSize:
                        const MaterialStatePropertyAll(Size.fromRadius(20)),
                  ),
                )),
          ],
        ));
  }
}
