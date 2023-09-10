import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/home/model/category.dart';
import 'package:custom_calendar/home/widget/category_item.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  final List<CategoryModel> categories;
  const CategoryView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.s36),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppMargin.m25),
          child: Text(
            'Janrlar',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: AppSize.s18,
                ),
          ),
        ),
        const SizedBox(height: AppSize.s14),
        SizedBox(
            height: AppSize.s115,
            child: categories.isEmpty
                ? const SizedBox()
                : ListView.separated(
                    itemCount: categories.length,
                    padding: const EdgeInsets.fromLTRB(AppMargin.m25, 0, AppMargin.m25, 0),
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => {},
                        child: const CategoryItem(),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: AppSize.s10,
                      );
                    },
                  )),
      ],
    );
  }
}
