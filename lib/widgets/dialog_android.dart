import 'package:flutter/material.dart';


Future<void> showDialogAlert({
  required BuildContext context,
  required String title,
  required Widget content,
  bool? isAcction,
  Widget? actions,
}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(title),
        content: content,
         actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('Cerrar' , style: TextStyle(color: Colors.red)),
            ),
            //boton secundario
            if( isAcction != false ) actions!
          ],
      );
    },
  );
}  