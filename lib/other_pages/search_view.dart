import 'package:custom_calendar/core/resources/app_routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {
          context.pushNamed(AppRoutes.detailRoute);
        },
        child: Text(
          'title'.tr(),
          style: const TextStyle(color: Colors.black),
        ),
      )),
    );
  }
}
