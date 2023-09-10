import 'package:custom_calendar/core/resources/app_colors.dart';
import 'package:custom_calendar/core/resources/app_icons.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final searchController = TextEditingController();
  bool isEmptySearch = true;
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: AppMargin.m10),
          child: Text(
            'Qidiruv',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.symmetric(horizontal: AppMargin.m25),
        children: [
          TextFormField(
            onChanged: (value) {
              if (value.isEmpty) {
                isEmptySearch = true;
              } else {
                isEmptySearch = false;
              }
              setState(() {});
            },
            controller: searchController,
            style: Theme.of(context).textTheme.bodyLarge,
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.textfieldBack,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSize.s10),
                borderSide: const BorderSide(width: AppSize.s1), //<-- SEE HERE
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.only(
                    left: AppMargin.m16, right: AppMargin.m20),
                child: SvgPicture.asset(AppIcons.searchLupa),
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: AppSize.s20,
                minHeight: AppSize.s20,
              ),
              suffixIcon: isEmptySearch
                  ? const SizedBox()
                  : IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        searchController.clear();
                        isEmptySearch = true;
                        setState(() {});
                      }),
            ),
          ),
        ],
      ),
      //
    );
  }
}
