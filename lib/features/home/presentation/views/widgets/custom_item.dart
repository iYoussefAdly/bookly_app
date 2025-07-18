import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          width: 140,
          height: 210,
          child: Image.asset(AssetsData.staticImage),
        ),
        Positioned(
          left: 78,
          top: 152,
          child: IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.circlePlay,size: 32,),
          ),
        ),
      ],
    );
  }
}
