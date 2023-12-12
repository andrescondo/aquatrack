import 'package:aquatrack/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardWithIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const CardWithIcon({
    required this.icon, 
    required this.text,
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      width: 500,
      
      decoration: const BoxDecoration(
          color: AppTheme.blueligth,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Icon(icon, size: 70,),
            const SizedBox(width: 30),
            Flexible(
              child: Text(
                text,
                maxLines: 4,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}