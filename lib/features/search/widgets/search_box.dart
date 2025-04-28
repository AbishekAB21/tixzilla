import 'package:flutter/material.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class SearchBoxWidget extends StatelessWidget {
  const SearchBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: appcolor.textfieldBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        cursorColor: appcolor.teritiaryColor,
        style: Fontstyles.inter600w(context),
        decoration: InputDecoration(
          isDense: true,
          hintText: "Search for movies",
          hintStyle: Fontstyles.inter600wHintStyled(context),
          prefixIcon: Icon(Icons.search_rounded),
          prefixIconColor: appcolor.iconColor,
          hintFadeDuration: Duration(milliseconds: 500),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: appcolor.teritiaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
