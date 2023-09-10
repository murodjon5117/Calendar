import 'package:custom_calendar/core/resources/app_routes.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/home/model/category.dart';
import 'package:custom_calendar/home/widget/horizontal_category_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HorizontalCategory extends StatelessWidget {
  final List<CategoryModel> categories;
  const HorizontalCategory({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.s36),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppMargin.m25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'O’zbek kinolar',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: AppSize.s18,
                      ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoutes.moviesRoute);
                },
                child: Text(
                  'Barchasi',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: AppSize.s16,
                      ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.s14),
        SizedBox(
            height: AppSize.s220,
            child: categories.isEmpty
                ? const SizedBox()
                : ListView.separated(
                    itemCount: categories.length,
                    padding: const EdgeInsets.fromLTRB(
                        AppMargin.m25, 0, AppMargin.m25, 0),
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => {},
                        child: const CategoryHorizontalItem(),
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
