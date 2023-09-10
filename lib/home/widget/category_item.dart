import 'package:custom_calendar/core/resources/app_colors.dart';
import 'package:custom_calendar/core/resources/app_images.dart';
import 'package:custom_calendar/core/resources/app_routes.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(AppRoutes.moviesRoute);
      },
      child: Container(
        width: AppSize.s100,
        height: AppSize.s115,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF181818), Color(0xFF060606)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 1],
          ),
          borderRadius: BorderRadius.circular(
            AppSize.s10,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: AppSize.s14,
            ),
            Image.asset(
              AppImages.comedy,
              width: AppSize.s52,
              height: AppSize.s52,
            ),
            const SizedBox(
              height: AppSize.s14,
            ),
            Text(
              'Komediya',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.inactiveColor,
                  fontWeight: FontWeight.w400,
                  fontSize: AppSize.s14),
            )
          ],
        ),
      ),
    );
  }
}
