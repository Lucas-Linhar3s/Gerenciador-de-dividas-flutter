import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/login/components/formLoginWidget.dart';

class ModalLogin extends StatelessWidget {
  const ModalLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(153, 33, 149, 243),
              blurRadius: 65,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: 600.0,
          width: 800.0,
          child: Column(
            children: [
              // Image.asset(
              //   "images/logo.png",
              //   width: 170.0,
              //   height: 150.0,
              // ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/9/91/Logo_SiteW.jpg',
                width: 150.0,
                height: 130.0,
              ),
              const SelectableText.rich(TextSpan(
                  text: "Acesse sua conta",
                  style: TextStyle(
                      color: Colors.black, fontSize: 22.0, height: 1.5))),
              const SizedBox(
                height: 35.0,
              ),
              const CustomForm(),
              Container(
                height: 15.0,
              ),
              Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  height: 100,
                  color: Colors.transparent,
                  child: const SelectableText.rich(TextSpan(
                      text: "2022  -  Lucas Linhares",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      )))),
            ],
          ),
        ),
      ),
    );
  }
}
