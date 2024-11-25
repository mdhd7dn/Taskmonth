import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick a Time')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            TimeOfDay? selectedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            if (selectedTime != null) {
              print('Selected time: ${selectedTime.format(context)}');
            }
          },
          child: Text('Pick Time'),
        ),
      ),
    );
  }
}
