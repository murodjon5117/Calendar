import 'package:custom_calendar/core/resources/app_images.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/core/utils/functions.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: AppSize.s5,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                AppSize.s10,
              ),
              child: Image.asset(
                AppImages.example,
                height: AppSize.s184,
                width: MediaQuery.of(context).size.width / 2,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const SizedBox(height: AppSize.s10),
          Text(
            'Notanish qotil',
            maxLines: 1,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontSize: AppSize.s14),
          ),
          const SizedBox(height: AppSize.s3),
          Text(
            '2023 / Melodramma hdvshavdsa dsah dvusa sdsds',
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
