import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Image.asset("assets/chats.png"), //Logo do app
          ),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage("assets/logo_if.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: TextButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://drive.google.com/file/d/1k1l3wBVrQIVrngUe4PfOdpiF0n-ua8y7/view?usp=sharing"),
          ),
          title: Text("Wesley Ulisses"),
          subtitle: Text("hoje"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/flutter-app-dev.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "O flutter é melhor que o react native, eu posso provar "

          ),
        ),
      ],
    ),
  );
}
