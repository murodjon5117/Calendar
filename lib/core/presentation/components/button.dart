import 'package:custom_calendar/core/resources/app_colors.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool? isPadding;
  const CustomButton(
      {super.key, required this.title, required this.onTap, this.isPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: isPadding ?? false ? AppMargin.m25 : AppMargin.m0),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.color292929,
          minimumSize: Size(MediaQuery.of(context).size.width, AppSize.s50),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
          elevation: AppSize.s0,
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontSize: AppSize.s14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
