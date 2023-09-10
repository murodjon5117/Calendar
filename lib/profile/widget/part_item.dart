import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class PartItem extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback action;
  const PartItem({
    super.key,
    required this.icon,
    required this.title,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => action,
      dense: true,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -1),
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSize.s25),
      minLeadingWidth: AppSize.s0,
      leading: SvgPicture.asset(icon),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
