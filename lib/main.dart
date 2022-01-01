import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.directions_walk)),
            IconButton(onPressed: () {}, icon: Icon(Icons.directions_ferry)),
          ],
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text(
            "Kanyonlar Diyarı Takoran",
          ),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(30),
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            gradient: LinearGradient(
                colors: [Colors.black12, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            image: DecorationImage(
                image: AssetImage("assets/images/takoran.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Text(
                "Saklı Cennet Takorana hoşgeldiniz.",
                style: TextStyle(fontFamily: "Licorice-Regular", fontSize: 45),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
