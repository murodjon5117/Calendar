import 'package:custom_calendar/core/presentation/components/button.dart';
import 'package:custom_calendar/core/resources/app_colors.dart';
import 'package:custom_calendar/core/resources/app_icons.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/profile/widget/part_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppMargin.m25),
      decoration: BoxDecoration(
          color: AppColors.textfieldBack,
          borderRadius: BorderRadius.circular(AppSize.s30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppMargin.m25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Ma\'lumotlar',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          const SizedBox(height: AppSize.s18),
          PartItem(
            icon: AppIcons.comments,
            title: '@panda_filmssupport_bot',
            action: () {},
          ),
          PartItem(
            icon: AppIcons.phoneCall,
            title: '+998 99 123 58 58',
            action: () {},
          ),
          PartItem(
            icon: AppIcons.star,
            title: 'Dasturni baholang',
            action: () {},
          ),
          PartItem(
            icon: AppIcons.policy,
            title: 'Maxfiylik siyosati',
            action: () {},
          ),
          const SizedBox(height: AppSize.s30),
          CustomButton(
            title: 'Kirish',
            onTap: () {},
            isPadding: true,
          ),
          const SizedBox(height: AppSize.s30),
          Text(
            'Versiya 1.0.0',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
