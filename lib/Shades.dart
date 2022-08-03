import 'package:flutter/material.dart';
import 'package:nuw/listitem.dart';

class Shades extends StatelessWidget {
  Shades({required this.color});

  final MaterialAccentColor color;




  @override
  Widget build(BuildContext context) {
    final List<Color>accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700,
    ];
    return Scaffold(
        appBar: AppBar(title: Text('shades')),


    body: ListView.builder(
    itemCount: accentShades.length,
    itemBuilder: (BuildContext context, int index)
    {
    return ListItem(color: accentShades[index]);
    },
    ),
    );





  }
}
