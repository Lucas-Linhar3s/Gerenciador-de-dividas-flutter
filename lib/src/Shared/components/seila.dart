import 'dart:html';

import 'package:flutter/material.dart';

class SideMenuPage extends StatefulWidget {
  const SideMenuPage({super.key});

  @override
  State<SideMenuPage> createState() => _SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenuPage> {
  bool focus = false;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(153, 0, 0, 0),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Container(
          width: 300,
          height: double.infinity,
          // color: Color.fromARGB(255, 255, 254, 254),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            children: [
              Container(
                alignment: AlignmentDirectional.topCenter,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/9/91/Logo_SiteW.jpg',
                  width: 140.0,
                  height: 110.0,
                ),
              ),
              const SizedBox(
                // width: 20,
                height: 20,
              ),
              Material(
                child: ListTile(
                  hoverColor: Color.fromARGB(181, 98, 175, 239),
                  iconColor: Colors.blueGrey,
                  textColor: Colors.blueGrey,
                  leading: const Icon(Icons.dashboard),
                  title: const Text(
                    'DASHBOARD',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      focus = !focus;
                    });
                  },
                ),
              ),
              const SizedBox(
                // width: 20,
                height: 11,
              ),
              Material(
                child: ListTile(
                  hoverColor: Color.fromARGB(181, 98, 175, 239),
                  iconColor: Colors.blueGrey,
                  textColor: Colors.blueGrey,
                  leading: const Icon(Icons.person),
                  title: const Text(
                    'MEU PERFIL',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                // width: 20,
                height: 11,
              ),
              Material(
                child: ListTile(
                  hoverColor: Color.fromARGB(181, 98, 175, 239),
                  iconColor: Colors.blueGrey,
                  textColor: Colors.blueGrey,
                  leading: const Icon(Icons.blinds_closed_sharp),
                  title: const Text(
                    'MINHAS DIVIDAS',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                // width: 20,
                height: 11,
              ),
              Material(
                child: ListTile(
                  hoverColor: Color.fromARGB(181, 98, 175, 239),
                  iconColor: Colors.blueGrey,
                  textColor: Colors.blueGrey,
                  leading: const Icon(Icons.add),
                  title: const Text(
                    'NOVA DIVIDA',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                // width: 20,
                height: 11,
              ),
              Material(
                child: ListTile(
                  hoverColor: Color.fromARGB(181, 98, 175, 239),
                  iconColor: Colors.blueGrey,
                  textColor: Colors.blueGrey,
                  leading: const Icon(Icons.help_outline),
                  title: const Text(
                    'AJUDA E SUPORTE',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                // width: 20,
                height: 11,
              ),
              Material(
                child: ListTile(
                  hoverColor: Color.fromARGB(181, 98, 175, 239),
                  iconColor: Colors.blueGrey,
                  textColor: Colors.blueGrey,
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text(
                    'SAIR',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ));
  }
}
