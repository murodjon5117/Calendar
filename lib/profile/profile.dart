import 'package:custom_calendar/core/resources/app_colors.dart';
import 'package:custom_calendar/core/resources/app_icons.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/profile/widget/information.dart';
import 'package:custom_calendar/profile/widget/part_item.dart';
import 'package:custom_calendar/profile/widget/profile_image.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: AppMargin.m10),
          child: Text(
            'Profil',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          const ProfileImage(),
          const SizedBox(height: AppSize.s30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppMargin.m25),
            child: Text(
              'Account',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: AppSize.s15),
          PartItem(
            icon: AppIcons.scanner,
            title: 'QR COD ni scaner qilish',
            action: () {},
          ),
          PartItem(
            icon: AppIcons.box,
            title: 'Kirish uchud kod',
            action: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppMargin.m25, vertical: AppMargin.m20),
            child: Divider(
              height: 0.5,
              color: AppColors.whiteColor70,
            ),
          ),
          PartItem(
            icon: AppIcons.history,
            title: 'Tarix',
            action: () {},
          ),
          PartItem(
            icon: AppIcons.computer,
            title: 'Faol sessiyalar',
            action: () {},
          ),
          PartItem(
            icon: AppIcons.creditCard,
            title: 'To’lovlar',
            action: () {},
          ),
          PartItem(
            icon: AppIcons.subscribe,
            title: 'Obunalar',
            action: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppMargin.m25, vertical: AppMargin.m20),
            child: Divider(
              height: 0.5,
              color: AppColors.whiteColor70,
            ),
          ),
          PartItem(
            icon: AppIcons.settings,
            title: 'Sozlamalar',
            action: () {},
          ),
          PartItem(
            icon: AppIcons.boxAlt,
            title: 'Parolni o’zgartirish',
            action: () {
              print('object');
            },
          ),
          const SizedBox(
            height: AppSize.s30,
          ),
          const Information(),
          const SizedBox(height: AppSize.s36)
        ],
      ),
    );
  }
}
