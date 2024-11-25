import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("I'm an App"),
        backgroundColor: Colors.red[600],
      ),
      body: App(),
    ),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      margin: const EdgeInsets.only(top: 20, right: 50),
      child: Container(
        color: Colors.green,
        margin: const EdgeInsets.symmetric(vertical: 200),
        child: Row(
          children: [
            _containerColorHeight(Colors.yellow, 20),
            _containerColorHeight(Colors.purple, 40),
            _containerColorHeight(Colors.grey, 60),
            _containerColorHeight(Colors.pink, 80),
            _containerColorHeight(Colors.orange, 100),
          ],
        ),
      ),
    );
  }

  Widget _containerColorHeight(Color color, double height) {
    return Expanded(
      child: Container(
        color: color,
        margin: const EdgeInsets.all(10),
        height: height,
      ),
    );
  }
}
