import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constants.dart';

class CategoryCard extends StatelessWidget {
  final svgSource;
  final title;
  final press;
  const CategoryCard(this.title,this.svgSource,this.press);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: shadowColor,
                  offset: Offset(0,15),
                blurRadius: 15,
                spreadRadius: -13
              )
            ],),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Flexible(child: SvgPicture.asset(svgSource),flex: 10,),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme
                        .of(context)
                        .textTheme
                        .title!
                        .copyWith(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}