import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/features/search/widgets/search_box.dart';

class SearchScreenComponent extends StatelessWidget {
  const SearchScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: appcolor.background,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                // Search Textfield
                SearchBoxWidget(),

                // Search result

                // show empty state container when there is no search promt and no results found
              ],
            ),
          ),
        ),
      ),
    );
  }
}
