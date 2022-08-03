import 'package:flutter/material.dart';
import 'package:nuw/HomePage.dart';

class PickColor extends StatefulWidget {
  const PickColor({Key? key}) : super(key: key);

  @override
  State<PickColor> createState() => _PickColorState();
}
class _PickColorState extends State<PickColor> {
  double _currentValueR = 0;
  double _currentValueG = 0;
  double _currentValueB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text ('Color RGB'),

          ),
          body: Column(
            children: [
              Slider(
                max: 255,
                value: _currentValueR,
                onChanged: (double value) {
                  setState(() {
                    _currentValueR = value;
                  });
                },
              ),
              Slider(
                max: 255,
                value: _currentValueG,
                onChanged: (double value) {
                  setState(() {
                    _currentValueG = value;
                  });
                },
              ),
              Slider(
                max: 255,
                value: _currentValueB,
                onChanged: (double value) {
                  setState(() {
                    _currentValueB = value;
                  });
                },
              ),
             Container(
               height: 200,
               width: 200,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Color.fromRGBO(_currentValueR.toInt(), _currentValueG.toInt(), _currentValueB.toInt(), 1),
             ),
             
             ),
              TextButton(style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
                onPressed: () {
                  Navigator.pop(context);
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('pop'),
                      content: Container(
                        width: 100.00,
                        height: 100.00,
                        decoration: new BoxDecoration(
                          color: Color.fromRGBO(_currentValueR.toInt(), _currentValueG.toInt(), _currentValueB.toInt(), 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  );
                },
                child: const Text('Choose this color'),
              ),
              

            ],

          )
    );
  }
}


// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   double _currentSliderValue = 20;
//
//   @override
//   Widget build(BuildContext context) {
//     return Slider(
//       value: _currentSliderValue,
//       max: 255,
//       divisions: 5,
//       label: _currentSliderValue.round().toString(),
//       onChanged: (double value) {
//         setState(() {
//           _currentSliderValue = value;
//         });
//       },
//     );

