import 'package:flutter/material.dart';
import 'second_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Hero Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Home Page'),
      routes: <String, WidgetBuilder>{
        '/second': (BuildContext context) => SecondScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Called when the bottom icon is clicked
  ///
  /// Navigate to the second screen
  void _nextScreen() {
    Navigator.of(context).pushNamed('/second');
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Spacer(),
          Container(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Hero(
                      tag: 'Hero',
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/bunny.jpg"),
                      ),
                    ),
                    title: Text('Yes I am Cute'),
                    subtitle: Text('Hi Folks i am bunny.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('View'),
                        onPressed: _nextScreen,
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
