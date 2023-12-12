import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({required key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200.0,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildHourPicker(),
                      SizedBox(width: 10.0),
                      buildDivider(),
                      SizedBox(width: 10.0),
                      buildMinutePicker(),
                      SizedBox(width: 10.0),
                      buildDivider(),
                      SizedBox(width: 10.0),
                      buildSecondsPicker(),
                      SizedBox(width: 10.0),
                    ],
                  ),
                  IgnorePointer(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.white10],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  IgnorePointer(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.white10, Colors.white],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildDivider() {
    return Text(':', style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 30.0,
    ),);
  }

Widget _buildHourPicker({int min = 10, int max = 45}) {
    assert(min <= max); // Asegurarse de que min no sea mayor que max
    return Container(
      width: 50.0,
      height: 200.0,
      child: ListWheelScrollView(
        onSelectedItemChanged: (val) {},
        controller: FixedExtentScrollController(initialItem: min - 1), // Ajustado para corresponder con la lista 0-indexed
        itemExtent: 40.0,
        // useMagnifier: true,
        children: List<Widget>.generate(
          max - min + 1, // El rango total de valores
          (int index) {
            final int displayHour = min + index;
            return _TimeText(text: displayHour.toString());
          },
        ),
      ),
    );
  }

  buildMinutePicker() {
    return Container(
      width: 50.0,
      height: 200.0,
      child: ListWheelScrollView(
        onSelectedItemChanged: (val) {},
        controller: FixedExtentScrollController(initialItem: 00),
        itemExtent: 40.0,
        // useMagnifier: true,
        children: List<Widget>.generate(
          60,
          (int index) {
            return _TimeText(text: index.toString());
          },
        ),
      ),
    );
  }

  buildSecondsPicker() {
    return Container(
      width: 50.0,
      height: 200.0,
      child: ListWheelScrollView(
        onSelectedItemChanged: (val) {},
        controller: FixedExtentScrollController(initialItem: 0),
        itemExtent: 40.0,
        // useMagnifier: true,
        children: List<Widget>.generate(
          60,
          (int index) {
            return _TimeText(text: index.toString());
          },
        ),
      ),
    );
  }
}

class _TimeText extends StatelessWidget {
  final String text;

  _TimeText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.padLeft(2, '0'),
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      ),
    );
  }
}