import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key});

  final textController = TextEditingController();
  final textKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: textKey,
      child: TextFormField(
        controller: textController,
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return 'This field is required';
          }
          return null;
        },
        onFieldSubmitted: (value) {
          if (textKey.currentState!.validate()) {
            BlocProvider.of<SearchCubit>(context)
                .fetchSearchedBooks(category: value.trim());
          }
        },
        decoration: InputDecoration(
          enabledBorder: buildOutLineInputBorder(color: Colors.grey),
          focusedBorder: buildOutLineInputBorder(color: Colors.white),
          suffixIcon: IconButton(
            onPressed: () {
              if (textKey.currentState!.validate()) {
                BlocProvider.of<SearchCubit>(context)
                    .fetchSearchedBooks(category: textController.text.trim());
              }
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          ),
          hintText: "Search",
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
