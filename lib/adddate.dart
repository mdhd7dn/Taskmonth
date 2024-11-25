import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick a Date')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            DateTime? selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (selectedDate != null) {
              print('Selected date: ${selectedDate.toLocal()}');
            }
          },
          child: Text('Pick Date'),
        ),
      ),
    );
  }
}
