import 'package:flutter/material.dart';

class LabeledRadio extends StatelessWidget {

  const LabeledRadio({
    super.key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    required this.fontSize,
  });

  final double fontSize;
  final String label;
  final EdgeInsets padding;
  final String groupValue;
  final String value;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Text(label,
            style: TextStyle( fontSize: fontSize),),
            Expanded(child: Container()),
            Transform.scale(
              scale: 1.5,
              child: Radio.adaptive(
              groupValue: groupValue,
              value: value,
              onChanged: (String? newValue) {
                onChanged(newValue!);
              },
            ),
            )
          ],
        ),
      ),
      


    );
  }
}
