import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 241, 241, 241),
        child: Column(
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              padding: EdgeInsets.all(25),
              child: SelectableText.rich(TextSpan(children: [
                TextSpan(
                    text: "Dashboard",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ))
              ])),
            ),
            const Divider(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20.0,
                ),
                Flexible(
                  child: Card(
                    elevation: 10,
                    // borderOnForeground: false,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.white,
                        border: Border(
                          left: BorderSide(
                            // color: Colors.green,
                            width: 300,
                          ),
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //       // color: Color.fromARGB(153, 0, 0, 0),
                        //       // blurRadius: 0,
                        //       // spreadRadius: 0,
                        //       ),
                        // ],
                      ),
                      child: Container(
                        width: 350,
                        height: 160,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                Flexible(
                  child: Card(
                    elevation: 10,
                    // borderOnForeground: false,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.white,
                        border: Border(
                          left: BorderSide(
                            // color: Colors.green,
                            width: 300,
                          ),
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //       // color: Color.fromARGB(153, 0, 0, 0),
                        //       // blurRadius: 0,
                        //       // spreadRadius: 0,
                        //       ),
                        // ],
                      ),
                      child: Container(
                        width: 350,
                        height: 160,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                Flexible(
                  child: Card(
                    elevation: 10,
                    // borderOnForeground: false,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.white,
                        border: Border(
                          left: BorderSide(
                            // color: Colors.green,
                            width: 400,
                          ),
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //       // color: Color.fromARGB(153, 0, 0, 0),
                        //       // blurRadius: 0,
                        //       // spreadRadius: 0,
                        //       ),
                        // ],
                      ),
                      child: Container(
                        width: 350,
                        height: 160,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Card(
                    elevation: 10,
                    // borderOnForeground: false,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.white,
                        border: Border(
                          left: BorderSide(
                            // color: Colors.green,
                            width: 400,
                          ),
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //       // color: Color.fromARGB(153, 0, 0, 0),
                        //       // blurRadius: 0,
                        //       // spreadRadius: 0,
                        //       ),
                        // ],
                      ),
                      child: Container(
                        // padding: EdgeInsets.all(40),
                        alignment: AlignmentDirectional.centerStart,
                        width: 1165,
                        height: 400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
