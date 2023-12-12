import 'package:flutter/material.dart';
import 'dart:io';

import 'package:aquatrack/widgets/widgets.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _isRadioSelected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Idioma'),
          actions: [
            IconButton(
                onPressed: () {
                  if (_isRadioSelected == '') {
                    Platform.isAndroid
                        ? showDialogAlert(
                            context: context,
                            title: 'Hay un error',
                            content: const Text('Selecione un Idioma'),
                            isAcction: false,
                            actions: TextButton(
                                onPressed: () {}, child: const Text('Guardar')))
                        : showIosAlertDialog(
                            context: context,
                            title: 'Hay un error',
                            content: const Text('Selecione un Idioma'),
                            isAcction: false,
                            actions: TextButton(
                                onPressed: () {},
                                child: const Text('Guardar')));

                    return;
                  }

                  Navigator.pushNamed(context, '/welcome');
                },
                icon: const Icon(Icons.check))
          ],
        ),
        body: Column(
          children: <Widget>[
            LabeledRadio(
              label: 'Español',
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              groupValue: _isRadioSelected,
              fontSize: 20.0,
              value: 'Español',
              onChanged: (String newValue) {
                setState(() {
                  _isRadioSelected = newValue;
                });
              },
            ),
            const Divider(
              height: 20,
            ),
            LabeledRadio(
              label: 'English',
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              groupValue: _isRadioSelected,
              fontSize: 20.0,
              value: 'English',
              onChanged: (String newValue) {
                setState(() {
                  _isRadioSelected = newValue;
                });
              },
            ),
            const Divider(
              height: 20,
            ),
            LabeledRadio(
              label: 'Italiano',
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              groupValue: _isRadioSelected,
              fontSize: 20.0,
              value: 'Italiano',
              onChanged: (String newValue) {
                setState(() {
                  _isRadioSelected = newValue;
                });
              },
            ),
          ],
        ));
  }
}
