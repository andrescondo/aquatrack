
import 'package:aquatrack/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TextChange extends StatelessWidget {
  final String text;
  final Color color;

  const TextChange({required this.text, this.color = AppTheme.primary});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 28, fontWeight: FontWeight.bold),
    );
  }
}