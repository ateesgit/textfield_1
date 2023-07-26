import 'package:flutter/material.dart';


class MyHomePage1 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input Example'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    inputValue = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                ),
              ),
            ),
          ),
          Text(inputValue)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Access the input value
          print('Input value: $inputValue');
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
