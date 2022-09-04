import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool persona = false;
  bool timer = false;
  bool tel1 = false;
  bool tel2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_circle, size: 58),
                    Column(
                      children: [
                        Text(
                          "Flutter McFlutter",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 22),
                        ),
                        Text("Experienced App Developer")
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("123 Main Street"),
                    SizedBox(width: 80),
                    Text("(415) 555-0198")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          persona = !persona;
                          timer = false;
                          tel1 = false;
                          tel2 = false;
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                content:
                                    Text("Únete a un club con otras personas"),
                              ),
                            );
                          setState(() {});
                        },
                        icon: Icon(Icons.accessibility,
                            color: persona ? Colors.indigo : Colors.black)),
                    IconButton(
                      onPressed: () {
                        persona = false;
                        timer = !timer;
                        tel1 = false;
                        tel2 = false;
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            SnackBar(
                              content: Text(
                                  "Cuenta regresiva para el evento: 31 días"),
                            ),
                          );
                        setState(() {});
                      },
                      icon: Icon(Icons.timer),
                      color: timer ? Colors.indigo : Colors.black,
                    ),
                    IconButton(
                        onPressed: () {
                          persona = false;
                          timer = false;
                          tel1 = !tel1;
                          tel2 = false;
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                content: Text("Llama al número 4155550198"),
                              ),
                            );
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.phone_android,
                          color: tel1 ? Colors.indigo : Colors.black,
                        )),
                    IconButton(
                        onPressed: () {
                          persona = false;
                          timer = false;
                          tel1 = false;
                          tel2 = !tel2;
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                content: Text("Llama al celular 3317865113"),
                              ),
                            );
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.phone_iphone,
                          color: tel2 ? Colors.indigo : Colors.black,
                        )),
                  ],
                )
              ]),
        ));
  }
}
