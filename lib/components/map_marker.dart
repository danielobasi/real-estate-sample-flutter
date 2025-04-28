import 'package:flutter/material.dart';
import 'package:moniepoint_realestate/constants.dart';

class MapMarker extends StatelessWidget {
  final String label;

  const MapMarker({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40,
      decoration: BoxDecoration(
        color: brandOrangeLight,
        borderRadius: BorderRadius.only(topRight: Radius.circular(7), bottomRight: Radius.circular(7),topLeft: Radius.circular(7)),
      ),
      child: Center(
        child: Text(label, style: TextStyle(fontSize: 12, color: brandWhite),),
      ),
    );
  }
}
