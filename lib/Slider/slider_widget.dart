import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('S L I D E R'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$_currentValue',
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            Slider(
              value: _currentValue,
              min: 0,
              max: 100,
              divisions: 25.toInt(),
              label: _currentValue.toString(),
              thumbColor: Colors.amber, //colors point
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            )
          ],
        ));
  }
}
