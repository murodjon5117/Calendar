import 'package:custom_calendar/core/resources/app_icons.dart';
import 'package:custom_calendar/core/resources/app_images.dart';
import 'package:custom_calendar/core/resources/app_routes.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/core/utils/fake_data.dart';
import 'package:custom_calendar/home/widget/category.dart';
import 'package:custom_calendar/home/widget/horizontal_category.dart';
import 'package:custom_calendar/home/widget/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.s45,
        title: SizedBox(
            height: AppSize.s45,
            width: AppSize.s73,
            child: Padding(
              padding: const EdgeInsets.only(left: AppSize.s10),
              child: Image.asset(AppImages.logo),
            )),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppMargin.m25),
            child: IconButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.notificationRoute);
                },
                icon: SvgPicture.asset(AppIcons.notification)),
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          MainSlider(banner: bannerList),
          CategoryView(categories: categoryList),
          HorizontalCategory(categories: categoryList),
          HorizontalCategory(categories: categoryList),
          HorizontalCategory(categories: categoryList),
        ],
      ),
    );
  }
}
