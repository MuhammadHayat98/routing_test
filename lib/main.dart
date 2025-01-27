import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new HomePage(),
      routes: <String, WidgetBuilder> {
        "/SecondPage" : (BuildContext context) => new SecondPage()
      }
    )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.orange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: <Widget>[
              
              new IconButton(
                icon: new Icon(Icons.add_circle, 
                color: Colors.lightBlueAccent),
                iconSize: 50.0,
                onPressed: () {Navigator.of(context).pushNamed("/SecondPage");},
              ),
              new Text("Add")
            ],
          ),
        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Page"),
        backgroundColor: Colors.orange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: <Widget>[
              
              new IconButton(
                icon: new Icon(Icons.home, 
                color: Colors.lightBlueAccent),
                iconSize: 50.0,
                onPressed: null,
              ),
              new Text("Page 2")
            ],
          ),
        ),
      )
    );
  }
}