import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ToggleButtons4 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ToggleButtons4State createState() => _ToggleButtons4State();
}

class _ToggleButtons4State extends State<ToggleButtons4> {
  List<bool> isSelected = [false, false];

  @override
  Widget build(BuildContext context) => ToggleButtons(
        isSelected: isSelected,
        selectedColor: const Color.fromARGB(255, 173, 16, 16),
        color: const Color.fromARGB(255, 8, 115, 10),
        fillColor: Colors.lightBlue.shade900,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('M', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text('F', style: TextStyle(fontSize: 18)),
          ),
        ],
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
      );
}