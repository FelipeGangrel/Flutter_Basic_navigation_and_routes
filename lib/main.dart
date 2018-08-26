import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Navigation and routes",
    home: new HomePage(),
    // routes usa um map de strings e Widgetbuilders
    routes: <String, WidgetBuilder> { 
      "/secondPage": (BuildContext context) => new SecondPage(),
    }
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
                iconSize: 70.0,
                onPressed: () {
                  Navigator.of(context).pushNamed("/secondPage");
                },
              ),
              new Text(
                "Home",
                style: TextStyle(fontSize: 36.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Outra Page"),
        backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                iconSize: 70.0,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              new Text(
                "Quero voltar pra home",
                style: TextStyle(fontSize: 36.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
