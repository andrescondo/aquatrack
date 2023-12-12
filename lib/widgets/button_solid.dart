import 'package:flutter/material.dart';
import 'package:aquatrack/theme/app_theme.dart';

class ButtonSolid extends StatelessWidget {
  final String text;
  final bool validate;
  final Function() action;

  const ButtonSolid({
    required this.text,
    required this.action,
    required this.validate,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: validate
          ? action
          : null,
      child: Container(
          width: double.infinity,
          height: 46,
          decoration: const BoxDecoration(
              color: AppTheme.primary,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppTheme.white,
              ),
            ),
          )),
    );
  }
}
