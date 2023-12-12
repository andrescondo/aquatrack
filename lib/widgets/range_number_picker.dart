import 'package:flutter/material.dart';

import 'package:aquatrack/widgets/widgets.dart';

class RangeNumberPicker extends StatefulWidget {
  final int min, max;
  final Function(int) updateWeight;

  const RangeNumberPicker({
    super.key, 
    required this.min, 
    required this.max, 
    required this.updateWeight
  });

  @override
  _RangeNumberPickerState createState() => _RangeNumberPickerState();
}

class _RangeNumberPickerState extends State<RangeNumberPicker> {
  int _selectedValue = 0;

  void functionUpdateWeight(int value){
    //updateWidget(value);
  }

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.min; // Valor inicial
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      height: 200.0,
      child: ListWheelScrollView(
        onSelectedItemChanged: (val) {
          setState(() {
            _selectedValue = widget.min + val;
            functionUpdateWeight(_selectedValue);
          });
        },
        controller: FixedExtentScrollController(initialItem: widget.min - 1),
        itemExtent: 50.0,
        children: List<Widget>.generate(
          widget.max - widget.min + 1,
          (int index) {
            final int currentValue = widget.min + index;
            final bool isSelected = currentValue == _selectedValue;
            return TextChange(
              text: currentValue.toString(),
              color: isSelected ? Colors.blue : Colors.black,
            );
          },
        ),
      ),
    );
  }



}