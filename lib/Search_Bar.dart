import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            icon: SvgPicture.asset('assets/icons/search.svg'),
            border: InputBorder.none),
      ),
    );
  }
}
