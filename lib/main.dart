import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child:  ListView(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Image.asset("assets/login.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(

              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                  fontSize: 20
              ),
            ),

            SizedBox(
              height: 20,
            ),

            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize:20,
                ),
              ),
              style: TextStyle(
                  fontSize: 20
              ),
            ),

            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: TextButton(
                child:Text(
                  "Esqueci a senha",
                  textAlign: TextAlign.center,
                ),
                onPressed:() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => primeira_tela(),) //se pressionado chama o metodo
                  );
                },
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFF000000),
                    Color(0xFF000000),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                          "                         Login",
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                      ),
                      textAlign: TextAlign.left,
                      ),
                    ],
                  ),

                  onPressed:() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => primeira_tela(),) //se pressionado chama o metodo
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );


  }
}

primeira_tela() {
  return MaterialApp(
    title: 'Dog Life',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),

    home: HomePage(),
  );
}
