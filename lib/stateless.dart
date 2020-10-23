import 'package:flutter/material.dart';
import 'package:flutter_cource_first_app/counter.dart';
import 'package:flutter_cource_first_app/rainbow.dart';

class StatelessPage extends StatelessWidget {
  Counter counter;
  StatelessPage(this.counter);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless page"),
      ),
      body: Center(
          child: Text(
        "You have pushed the button this many times:\n${counter.value}",
        style: TextStyle(fontSize: 30),
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => Rainbow(),
              ),
            ),
          ),
          Button(counter),
        ],
      ),
    );
  }
}

class Button extends StatefulWidget {
  Counter counter;
  Button(this.counter);
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("${widget.counter.value}"),
      onPressed: () {
        setState(widget.counter.increment);
      },
    );
  }
}
