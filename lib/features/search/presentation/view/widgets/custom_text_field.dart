import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutLineInputBorder(color: Colors.grey),
        focusedBorder: buildOutLineInputBorder(color: Colors.white),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.magnifyingGlass),
        ),
        hintText: "Search",
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder({required Color color}) {
    return OutlineInputBorder(borderSide: BorderSide(color: color));
  }
}
