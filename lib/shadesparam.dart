import 'package:flutter/material.dart';

import 'package:nuw/Shades.dart';

class ShadesParam extends StatelessWidget {
  const ShadesParam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as MaterialAccentColor;
    return Shades(
      color: data,
    );
  }
}
