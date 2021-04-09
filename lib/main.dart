import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
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
        home: HomeView(title: 'Pomodoro'));
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
  final double pi = 3.1415926535897932;
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
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.grey[400],
          ],
        )),
        child: Center(
            child: Column(
          children: <Widget>[
            // Container(
            //   margin: const EdgeInsets.only(top: 200.0),
            //   child: ArcText(
            //       radius: 190,
            //       startAngle: -pi / 4,
            //       text: 'Focus Time',
            //       textStyle: TextStyle(fontSize: 34, color: Colors.black),
            //       startAngleAlignment: StartAngleAlignment.start,
            //       placement: Placement.outside,
            //       direction: Direction.clockwise),
            // ),
            Container(
              // margin: const EdgeInsets.only(top: 200.0),
              child: Image.asset('assets/images/tomato.png'),
            ),
          ],
        )),
      ),
    );
  }
}

class TomatoImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/tomato.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
