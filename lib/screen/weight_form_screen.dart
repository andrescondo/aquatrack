import 'package:flutter/material.dart';
import 'package:aquatrack/widgets/widgets.dart';


class WeightFormScreen extends StatefulWidget {
  const WeightFormScreen({Key? key}) : super(key: key);

  @override
  State<WeightFormScreen> createState() => _WeightFormScreenState();
}

class _WeightFormScreenState extends State<WeightFormScreen> {
  int weight = 40;
  String type = "KG";

   updateWeight(int weight){
    setState(() {
      this.weight = weight;
    });
  }

  void updateType(String type){
    setState(() {
      this.type = type;
    });
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
                    '¿Cúanto pesas?',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CardWithIcon(
                    icon: Icons.water_drop_outlined,
                    text:
                        'La ingesta de agua varia entre personas de diferente peso',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Stack(children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           RangeNumberPicker(min: 10, max: 45, updateWeight: updateWeight),
                           const SizedBox(width: 10.0),
                          TypeWeightPicker(type: type, updateType: updateType,)
                        ],
                      ),
                      _shadoeText(),
                    ]),
                  ),
                  ButtonSolid(text: 'Siguiente', action: () {}, validate: true)
                ]),
          ],
        ),
      ),
    );
  }
}

Widget _shadoeText() {
  return Column(
    children: [
      IgnorePointer(
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(250, 253, 252, 252),
                Color.fromARGB(199, 255, 254, 254)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      IgnorePointer(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 60,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: Border(
                top: BorderSide(
                    color: Color.fromARGB(59, 158, 158, 158), width: 2.0),
                bottom: BorderSide(
                    color: Color.fromARGB(59, 158, 158, 158), width: 2.0),
              ),
            ),
          ),
        ),
      ),
      IgnorePointer(
        child: Container(
          height: 80,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(250, 253, 252, 252),
                Color.fromARGB(199, 255, 254, 254)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    ],
  );
}




class TypeWeightPicker extends StatefulWidget {
  final String type;
  final Function(String) updateType;

  const TypeWeightPicker({super.key, required this.type, required this.updateType});

  @override
  _TypeWeightPickerState createState() => _TypeWeightPickerState();
}

class _TypeWeightPickerState extends State<TypeWeightPicker> {
  int _selectedIndex = 0; // Por defecto seleccionamos 'KG'

    void functionUpdateType(String value){
    //this.updateType(value);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      height: 200.0,
      child: ListWheelScrollView(
        onSelectedItemChanged: (val) {
          setState(() {
            _selectedIndex = val;
            //functionUpdateType(_selectedIndex);
            
          });
        },
        controller: FixedExtentScrollController(),
        itemExtent: 50.0,
        useMagnifier: true,
        diameterRatio: 2.5,
        children: <Widget>[
          TextChange(
            text: 'KG',
            color: _selectedIndex == 0 ? Colors.blue : Colors.black,
          ),
          TextChange(
            text: 'LB',
            color: _selectedIndex == 1 ? Colors.blue : Colors.black,
          ),
        ],
      ),
    );
  }

}

