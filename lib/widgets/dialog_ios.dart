import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showIosAlertDialog({
  required BuildContext context,
  required String title,
  required Widget content,
  bool? isAcction,
  Widget? actions,
}) {
  return showCupertinoDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: content,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar', style: TextStyle(color: Colors.red)),
          ),
          //boton secundario
          if (isAcction != false) actions!
        ],
      );
    },
  );
}
