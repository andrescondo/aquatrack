import 'package:flutter/material.dart';

import 'package:aquatrack/theme/app_theme.dart';
import 'package:getwidget/getwidget.dart';

class ProgressBarCustom extends StatelessWidget {
  final double value;

  const ProgressBarCustom({
    required this.value,
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: GFProgressBar(
        percentage: value,
        backgroundColor: AppTheme.ligthgray,
        progressBarColor: AppTheme.secundary,
        lineHeight: 10,   
      ),
    );
  }
}