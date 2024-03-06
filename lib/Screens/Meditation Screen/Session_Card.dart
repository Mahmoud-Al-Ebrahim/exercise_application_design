import 'package:exercises_app/Constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final sessionNumber;
  final isDone;
  final press;
  const SessionCard({this.sessionNumber,this.isDone=false,this.press,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraint){
      return  ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
        width: constraint.maxWidth/2-10,
        decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  offset: Offset(0,15),
                  blurRadius: 20,
                  spreadRadius: -13
                )
              ]),
        child:Material(
        color: Colors.transparent,
        child:InkWell(
          onTap: press,
          child: Padding(
            padding:EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:isDone?blueColor:Colors.white ,
                    border: Border.all(color:blueColor )
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: !isDone?blueColor:Colors.white,
                  ),
                ),
                SizedBox(width: 10,),
                Text('Session '+sessionNumber.toString(),
                style: Theme.of(context).textTheme.subtitle1,
                )
              ],
        ),
          ),
      ),
          )));}
    );
  }
}
