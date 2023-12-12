import 'package:aquatrack/theme/app_theme.dart';
import 'package:aquatrack/widgets/widgets.dart';
import 'package:flutter/material.dart';


class SexFormScreen extends StatefulWidget {
  const SexFormScreen({Key? key}) : super(key: key);

  @override
  State<SexFormScreen> createState() => _SexFormScreenState();
}

class _SexFormScreenState extends State<SexFormScreen> {
  String? selected = "";

    nextStep(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pushNamed(context, '/weight');
    } else {
      Navigator.pushNamed(context, '/weight');
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
        child: Column(
          children: [
            const ProgressBarCustom(
              value: 0.2,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '¿Cúal es tu sexo?',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CardWithIcon(
                    icon: Icons.roundabout_left,
                    text: 'Esto nos ayudará a darte mejores recomendaciones',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _SelectSexButton(
                            icon: Icons.male_outlined,
                            value: 'Hombre',
                            isSelected: selected == 'Hombre',
                            onTap: () {
                              setState(() {
                                selected = 'Hombre';
                              });
                            }),
                        _SelectSexButton(
                            icon: Icons.female_outlined,
                            value: 'Mujer',
                            isSelected: selected == 'Mujer',
                            onTap: () {
                              setState(() {
                                selected = 'Mujer';
                              });
                            }),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(20.0),
                    child: Center(
                      child: _SelectSexButton(
                          icon: Icons.transgender_outlined,
                          value: 'Otro',
                          isSelected: selected == 'Otro',
                          onTap: () {
                            setState(() {
                              selected = 'Otro';
                            });
                          }),
                    ),
                  ),
                  ButtonSolid(
                    text: 'Siguiente', 
                    action: () {
                      nextStep(context);
                    }, 
                    validate: true)
                ]),
          ],
        ),
      ),
    );
  }
}

class _SelectSexButton extends StatelessWidget {
  final IconData icon;
  final String value;
  final VoidCallback onTap;
  final bool isSelected;

  const _SelectSexButton({
    required this.icon,
    required this.value,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(children: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.all(0.0),
          ),
          onPressed: onTap,
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: isSelected ? AppTheme.primary : AppTheme.bluetransparent,
                borderRadius: const BorderRadius.all(Radius.circular(100))),
            child: Icon(
              icon,
              size: 90,
              color: isSelected ? AppTheme.white : AppTheme.ligthgray,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: TextStyle(
              color: isSelected ? AppTheme.primary : AppTheme.darkgray,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
