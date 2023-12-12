import 'package:flutter/material.dart';
import 'package:aquatrack/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  nextStep(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pushNamed(context, '/sex');
    } else {
      Navigator.pushNamed(context, '/sex');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //icon
              const Icon(Icons.account_circle, size: 100),
              const Text(
                '''¡Hey!
Bienvenido, a la nueva aplicación para recordatorios personalizados para tomar agua
          ''',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                  'Ahora unas preguntas para conocerte mejor y personalizar tus horarios diarios, y objetivos '),
              const SizedBox(height: 100),
              ButtonSolid(
                text: 'Siguiente',
                action: () {
                  nextStep(context);
                },
                validate: true,
              )
            ]),
      )),
    );
  }
}
