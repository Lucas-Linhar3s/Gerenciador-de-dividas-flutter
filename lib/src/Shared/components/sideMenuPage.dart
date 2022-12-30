import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projeto/src/Interfaces/dashboard/components/dashboard_component.dart';
import 'package:projeto/src/Interfaces/dashboard/web/dashboardWeb.dart';
import 'package:projeto/src/Shared/components/pages.dart';

class SideMenuPage extends StatefulWidget {
  const SideMenuPage({super.key});

  @override
  State<SideMenuPage> createState() => _SideMenuPageState();
}

class _SideMenuPageState extends State<SideMenuPage> {
  bool focus = false;
  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Card(
            elevation: 10,
            // shape: RoundedRectangleBorder(
            //   side: const BorderSide(
            //     color: Colors.transparent,
            //   ),
            //   borderRadius: BorderRadius.circular(10.0), //<-- SEE HERE
            // ),
            child: Container(
              width: 230,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  // Wrap(),
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
                      // focusColor: _focus ? Colors.black : Colors.red,
                      title: const Text(
                        'DASHBOARD',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          // focus = true;
                        });
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
                      // tileColor: const Color.fromARGB(181, 98, 175, 239),
                      hoverColor: const Color.fromARGB(181, 98, 175, 239),
                      iconColor: Colors.blueGrey,
                      textColor: Colors.blueGrey,
                      leading: const Icon(Icons.exit_to_app),
                      title: const Text(
                        'SAIR',
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
                ],
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 230,
          child: Pages(controller: _controller,)
        )
      ],
    );
  }
}
