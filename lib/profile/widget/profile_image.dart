import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_calendar/core/resources/app_colors.dart';
import 'package:custom_calendar/core/resources/app_icons.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: AppSize.s140,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: AppSize.s0,
                child: SizedBox(
                  height: AppSize.s120,
                  width: AppSize.s120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.s60),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://mini-io-api.texnomart.uz/newcontent/slider/58/HrhYvEySsl0H9p9VrsDXsOUXZ8BxmFJLW3Bz9RLH.webp',
                      fit: BoxFit.fill,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: AppSize.s0,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(AppSize.s50)),
                  height: AppSize.s36,
                  width: AppSize.s36,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.s12),
                    child: SvgPicture.asset(AppIcons.edit),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.s10),
        Text(
          'Jenifer Loppiloq',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
