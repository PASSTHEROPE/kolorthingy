import 'package:flutter/material.dart';
import 'package:nuw/listitem.dart';
import 'package:nuw/Shades.dart';
import 'package:nuw/pickcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage([Key? key]) : super(key: key);

  // void NavigateStatic(
  //     BuildContext context,
  //     MaterialAccentColor) {
  //   Navigator.pushNamed(context, '/Shades');
  //
  // }


  void Navigate(
  BuildContext context,MaterialAccentColor color){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return Shades(
          color: color,
      ); })); //
    }

  void Navigatecolor(
      BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return PickColor(

      ); })); //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigatecolor(context);},
      ) ,
        appBar: AppBar(title: Text('Colors')),
        body: ListView.builder(
          itemCount: Colors.accents.length,
          itemBuilder: (BuildContext context, int index) {

            return GestureDetector(
              onTap: () {
                Navigate(context,Colors.accents.elementAt(index));
    },


              child: ListItem(color: Colors.accents.elementAt(index)),
            );


          },
        ));
  }

}
