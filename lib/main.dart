import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> numbers = [
    'Uno',
    'dos',
    'dos',
    'dos',
    'dos',
    'dos',
    'dos',
    'dos',
    'dos',
    'dos',
  ];
  String defaultText = 'Spanish Numbers';
  void displayNumbers(){
    setState(() {
      defaultText = numbers[counter];
      if(counter<9){
        counter ++;
      }else{
        counter  = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull'),
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(defaultText, style: TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                 child: Text('Call spanish numbers'),
                  onPressed: displayNumbers,
                  color: Colors.deepOrange)
            ],
          ),
        ),
      ),
    );
  }
}
