import 'package:flutter/material.dart';

class CustomListTileCard extends StatelessWidget {
  const CustomListTileCard({super.key,
    required this.icon, required this.data,
  });
  final Icon icon;
  final String data;
  @override
  Widget build(BuildContext context) {
    return  Card(
      margin:const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: ListTile(
        leading: icon,
        title: Text(
          data,
          style:const TextStyle(
            color: Color(0xFF2B475E),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}