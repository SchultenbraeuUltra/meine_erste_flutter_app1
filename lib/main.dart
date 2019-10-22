import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JanniksKleineSeite(),
    );
  }
}

class JanniksKleineSeite extends StatefulWidget {
  @override
  _JanniksKleineSeiteState createState() => _JanniksKleineSeiteState();
}

class _JanniksKleineSeiteState extends State<JanniksKleineSeite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Janniks ULTRA Seite"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network("https://ksassets.timeincuk.net/wp/uploads/sites/55/2016/03/2016_Heisenberg_BreakingBad_Netflix_230316_0-920x610.jpg")
            machMirNeReihe("Name:", "Jannik"),
            machMirNeReihe("Alter", "21"),
            machMirNeReihe("Kenntnisse:", "0"),
            machMirNeReihe("Hobbies:", "nope"),
          ],
        ),
      ),
    );
  }

  Widget machMirNeReihe(attribut, wert) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            attribut,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            wert,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
