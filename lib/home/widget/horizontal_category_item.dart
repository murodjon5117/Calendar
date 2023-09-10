import 'package:custom_calendar/core/resources/app_images.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/core/utils/functions.dart';
import 'package:flutter/material.dart';

class CategoryHorizontalItem extends StatelessWidget {
  const CategoryHorizontalItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.s150,
      height: AppSize.s220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                AppSize.s10,
              ),
              child: Image.asset(
                AppImages.example,
                width: AppSize.s150,
                height: AppSize.s184,
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.s5,
          ),
          Text(
            'Notanish qotil',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: AppSize.s14),
          ),
          const SizedBox(
            height: AppSize.s3,
          ),
          Text(
            '2023 / Melodramma',
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: AppSize.s10,
                color: blendColors(const Color(0xffdfdfdf), Colors.white, 60)),
          ),
        ],
      ),
    );
  }
}
