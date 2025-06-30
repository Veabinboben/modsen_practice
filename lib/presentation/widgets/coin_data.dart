import 'package:flutter/material.dart';

class CoinData extends StatelessWidget {
  const CoinData({required this.name, required this.value,super.key});

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,),
          Text(value,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
        ],
      ),
    );
  }
}
