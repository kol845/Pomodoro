import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyText1: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            bodyText2: TextStyle(
              fontSize: 60,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        home: HomeView(title: 'Flutter in 15 min'));
  }
}

class HomeView extends StatefulWidget {
  final String title;
  HomeView({this.title});
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _counter = 0; // private vars are declared by starting with '_'
  void increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  void decreaceCounter() {
    if (_counter > 0)
      setState(() {
        _counter--;
      });
  }

  void refreshCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Scaffold widget allows you to different premade layouts
        appBar: AppBar(
          title: Text(widget.title),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FloatingActionButton(
            onPressed: () => refreshCounter(),
            child: Icon(Icons.refresh),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => decreaceCounter(),
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => increaseCounter(),
            child: Icon(Icons.add),
          )
        ]),
        body: Center(
          child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Ensures vertical alignment
              children: <Widget>[
                Text(
                  "Tapped button this many times",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '$_counter', // This is how vars are used
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ]),
        ));
  }
}
