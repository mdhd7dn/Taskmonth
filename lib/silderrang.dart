import 'package:flutter/material.dart';

class RangeSliderr extends StatefulWidget {
  @override
  _RangeSliderExampleState createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderr> {
  RangeValues current = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Range Slider ')),
      body: Center(
        child: RangeSlider(
          values: current,
          min: 0,
          max: 100,
          divisions: 5,
          labels: RangeLabels(
            current.start.round().toString(),
            current.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              current = values;
            });
          },
        ),
      ),
    );
  }
}
