import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constants.dart';


class BottomNavigationItem extends StatelessWidget {
  final svgSource;
  final title;
  final press;
  final isActive;
  const BottomNavigationItem(this.title,this.svgSource,this.press,{this.isActive=false,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgSource,color:isActive? activeIconColor:textColor ,),
          Text(title,style: TextStyle(
            color: isActive? activeIconColor:textColor
          ),),
        ],
      ),
    );
  }
}
