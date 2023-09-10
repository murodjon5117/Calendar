import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/core/utils/fake_data.dart';
import 'package:custom_calendar/movies/widget/movie_item.dart';
import 'package:flutter/material.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: AppMargin.m10),
          child: Text(
            'Saqlanganlar',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(
              horizontal: AppMargin.m25, vertical: AppMargin.m10),
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: AppSize.s230,
              crossAxisCount: 2,
              mainAxisSpacing: AppSize.s20,
              crossAxisSpacing: AppSize.s13),
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return const MovieItem();
          }),
    );
  }
}
