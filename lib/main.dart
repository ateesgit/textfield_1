import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Input Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input Example'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            onChanged: (value) {
              setState(() {
                inputValue = value;
              });
            },
            decoration:const InputDecoration(
              labelText: 'Enter your name',
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Access the input value
          print('Input value: $inputValue');
        },
        child:const Icon(Icons.save),
      ),
    );
  }
}
