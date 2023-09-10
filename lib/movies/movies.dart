import 'package:custom_calendar/core/presentation/components/app_bar.dart';
import 'package:custom_calendar/core/resources/app_icons.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/core/utils/fake_data.dart';
import 'package:custom_calendar/movies/widget/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            alignment: Alignment.centerRight,
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            }),
        title: Text(
          'O’zbek kinolari',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {},
              icon: SvgPicture.asset(AppIcons.filter)),
          const SizedBox(
            width: AppSize.s25,
          )
        ],
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
            crossAxisSpacing: AppSize.s13
          ),
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return const MovieItem();
          }),
    );
  }
}
