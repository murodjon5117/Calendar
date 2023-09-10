import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_calendar/core/resources/app_colors.dart';
import 'package:custom_calendar/core/resources/app_icons.dart';
import 'package:custom_calendar/core/resources/app_values.dart';
import 'package:custom_calendar/core/utils/functions.dart';
import 'package:custom_calendar/home/model/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainSlider extends StatefulWidget {
  const MainSlider({super.key, required this.banner});
  final List<BannerModel> banner;

  @override
  State<MainSlider> createState() => _MainSliderState();
}

class _MainSliderState extends State<MainSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s14,
          ),
          CarouselSlider.builder(
            itemCount: widget.banner.length,
            options: CarouselOptions(
                height: AppSize.s180,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 1),
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            itemBuilder: (ctx, index, realIdx) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppMargin.m25),
                child: GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(AppSize.s10),
                        child: Container(
                          foregroundDecoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0.5400000214576721),
                                Colors.black.withOpacity(0.6299999952316284)
                              ],
                              begin: const Alignment(0.00, -2.00),
                              end: const Alignment(0, 2),
                            ),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: widget.banner[index].imageUrl,
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
                      Positioned(
                        top: AppSize.s14,
                        right: AppSize.s12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '8.8',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const SizedBox(
                              width: AppSize.s5,
                            ),
                            SvgPicture.asset(AppIcons.percent)
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: AppSize.s15,
                        left: AppSize.s15,
                        right: AppSize.s15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mening sevgilim ayg‘oqchi',
                              style: Theme.of(context).textTheme.titleMedium,
                              maxLines: 1,
                            ),
                            const SizedBox(height: AppSize.s5),
                            Text(
                              '2023 / Komediya',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: blendColors(
                                          const Color(0xffdfdfdf),
                                          Colors.white,
                                          60)),
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppMargin.m25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.banner.map((b) {
                int index = widget.banner.indexOf(b);
                return Container(
                  width: AppSize.s8,
                  height: AppSize.s8,
                  margin: const EdgeInsets.only(
                      top: AppMargin.m16,
                      left: AppMargin.m6,
                      right: AppMargin.m6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? AppColors.white
                        : AppColors.circleDotColor,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
