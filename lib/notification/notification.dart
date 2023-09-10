import 'package:custom_calendar/core/presentation/components/app_bar.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/home/model/category.dart';
import 'package:custom_calendar/notification/widget/notification_item.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryList = [
      const CategoryModel(
          id: 1,
          title: 'Comedy',
          imageUrl:
              'https://mini-io-api.texnomart.uz/newcontent/slider/58/HrhYvEySsl0H9p9VrsDXsOUXZ8BxmFJLW3Bz9RLH.webp'),
      const CategoryModel(
          id: 2,
          title: 'Comedy',
          imageUrl:
              'https://mini-io-api.texnomart.uz/newcontent/slider/58/HrhYvEySsl0H9p9VrsDXsOUXZ8BxmFJLW3Bz9RLH.webp'),
      const CategoryModel(
          id: 2,
          title: 'Comedy',
          imageUrl:
              'https://mini-io-api.texnomart.uz/newcontent/slider/58/HrhYvEySsl0H9p9VrsDXsOUXZ8BxmFJLW3Bz9RLH.webp'),
      const CategoryModel(
          id: 2,
          title: 'Comedy',
          imageUrl:
              'https://mini-io-api.texnomart.uz/newcontent/slider/58/HrhYvEySsl0H9p9VrsDXsOUXZ8BxmFJLW3Bz9RLH.webp'),
      const CategoryModel(
          id: 2,
          title: 'Comedy',
          imageUrl:
              'https://mini-io-api.texnomart.uz/newcontent/slider/58/HrhYvEySsl0H9p9VrsDXsOUXZ8BxmFJLW3Bz9RLH.webp'),
      const CategoryModel(
          id: 2,
          title: 'Comedy',
          imageUrl:
              'https://mini-io-api.texnomart.uz/newcontent/slider/58/HrhYvEySsl0H9p9VrsDXsOUXZ8BxmFJLW3Bz9RLH.webp')
    ];

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Bildirishnomalar',
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(
              horizontal: AppMargin.m25, vertical: AppMargin.m10),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const NotificationItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: AppSize.s30,
            );
          },
          itemCount: categoryList.length),
    );
  }
}
