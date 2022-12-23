import 'package:flutter/material.dart';

class FormRecovery extends StatefulWidget {
  const FormRecovery({super.key});

  @override
  State<FormRecovery> createState() => _FormRecoveryState();
}

final _formKey = GlobalKey<FormState>();

class _FormRecoveryState extends State<FormRecovery> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Container(
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
              height: 15.0,
            ),
            Container(
              width: 500.0,
              child: TextFormField(
                controller: _controllerSenha,
                obscureText: true,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor insira seu numero de celular';
                  } else if (value.length < 8) {
                    return 'Celular invalido';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Insira seu numero de celular",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(06.0),
                  ),
                  suffixIcon: const Icon(Icons.settings_cell),
                  labelText: "Celular",
                  enabled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: 500.0,
              child: TextFormField(
                controller: _controllerSenha,
                obscureText: true,
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
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  labelText: "Senha",
                  enabled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: 500.0,
              child: TextFormField(
                controller: _controllerSenha,
                obscureText: true,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Senhas não conferem';
                  } else if (value.length < 8) {
                    return 'Senha curta';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Confirme sua senha",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(06.0),
                  ),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  labelText: "Confirmar Senha",
                  enabled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
                width: 500.0,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Carregando...'),
                          backgroundColor: Colors.green,
                          elevation: 5.0,
                          duration: Duration(milliseconds: 5000),
                        ),
                      );
                      if (_controllerEmail.text == "Lucas@gmail.com" &&
                          _controllerSenha.text == "123456789") {
                        // Navigator.pushReplacementNamed(context, "/teste");
                        Navigator.of(context).pushReplacementNamed("/home");
                      }
                    }
                  },
                  child: Text(
                    "Recuperar",
                    style: const TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(10.0),
                    animationDuration: const Duration(milliseconds: 5),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.blue),
                    visualDensity: VisualDensity.comfortable,
                    // fixedSize:
                    //     const MaterialStatePropertyAll(Size.fromRadius(1)),
                  ),
                )),
          ],
        ));
  }
}
