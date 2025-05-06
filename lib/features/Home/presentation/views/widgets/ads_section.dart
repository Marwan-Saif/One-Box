
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:one_box/features/Home/presentation/views/widgets/ads_item.dart';

class AdsSection extends StatelessWidget {
  const AdsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 190,),
      child: CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          // height: 160,
          
          clipBehavior: Clip.none,
          aspectRatio: 18 / 9,
          viewportFraction: 0.86,
          enlargeFactor: 0.3,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        itemBuilder: (context, index, realIndex) {
          return const CarosalItem();
        },
      ),
    );
  }
}