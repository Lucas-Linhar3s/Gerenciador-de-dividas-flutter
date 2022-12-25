import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/dashboard/components/dashboard_component.dart';
import 'package:projeto/src/Interfaces/dashboard/web/dashboardWeb.dart';

class SideMenuPage extends StatefulWidget {
  const SideMenuPage({super.key});

  @override
  State<SideMenuPage> createState() => _SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenuPage> {
  final PageController _controller = PageController(initialPage: 0);
  bool focus = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DecoratedBox(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(153, 0, 0, 0),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Flexible(
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
                    const Divider(
                      color: Colors.black,
                      height: 0.3,
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
                          // Navigator.pop(context);
                          _controller.jumpToPage(0);
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
                        onTap: () {
                          _controller.jumpToPage(1);
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
                        leading: const Icon(Icons.blinds_closed_sharp),
                        title: const Text(
                          'MINHAS DIVIDAS',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        onTap: () {
                          _controller.jumpToPage(2);
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
                        leading: const Icon(Icons.add),
                        title: const Text(
                          'NOVA DIVIDA',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        onTap: () {
                          // print(MediaQuery.of(context).size.height < 769);
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
                    Divider(),
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
              ),
            )),
        Container(
          width: MediaQuery.of(context).size.width - 300,
          child: PageView(
            children: <Widget>[
              DashboardWeb(),
              Scaffold(
                body: Center(child: Text("Meu Perfil")),
              ),
              Scaffold(
                body: Center(child: Text("Minhas Dividas")),
              ),
            ],
            controller: _controller,
          ),
        )
      ],
    );
  }
}
