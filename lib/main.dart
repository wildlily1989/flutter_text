import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ExampleWidget(),
    );
  }
}

// Opens an [AlertDialog] showing what the user typed.

class ExampleWidget extends StatefulWidget {
  ExampleWidget({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _ExampleWidgetState();
    throw UnimplementedError();
  }
}

class _ExampleWidgetState extends State<StatefulWidget> {
  final TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              controller: _controller,
              decoration: new InputDecoration(
                hintText: 'Type something',
              ),
            ),
            new RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  child: new AlertDialog(
                    title: new Text('What you typpe is :'),
                    content: new Text(_controller.text),
                  ),
                );
              },
              child: new Text('DONE'),
            ),
          ],
        ),
    );
    throw UnimplementedError();
  }
}
