import 'package:flutter/material.dart';

class Sliderr extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<Sliderr> {
  double current = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider')),
      body: Column(
        children: [
          Center(
            child: Slider(
              value: current,
              min: 0,
              max: 100,
              divisions: 5,
              label: current.round().toString(),
              onChanged: (double value) {
                setState(() {
                  current = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
