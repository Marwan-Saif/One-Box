import 'package:flutter/material.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/generated/l10n.dart';

List<NavItemEntity> navBarItems(BuildContext context) {
  return [
    NavItemEntity(
      title:S.of(context).main,
      image: Assets.imagesHome,
      activeColor: const Color(0xff3e6ec7),
    ),
    NavItemEntity(
      title: S.of(context).auctions,
      image: Assets.imagesAucation,
      activeColor: const Color(0xff3e6ec7),
    ),
    NavItemEntity(
      title: S.of(context).add_product,
      image: Assets.imagesAdd,
      activeColor: const Color(0xff6f92d6),
    ),
    NavItemEntity(
      title: S.of(context).customers,
      image: Assets.imagesCart,
      activeColor: const Color(0xff6f92d6),
    ),
    NavItemEntity(
      title: S.of(context).account,
      image: Assets.imagesUser,
      activeColor: const Color(0xff6f92d6),
    ),
  ];
}

// List<NavItemEntity> navBarItems = [
//   NavItemEntity(
//     title: 'الرئيسية',
//     image: Assets.imagesHome,
//     activeColor: const Color(0xff3e6ec7),
//   ),
//   NavItemEntity(
//     title: 'مزايدتي',
//     image: Assets.imagesAucation,
//     activeColor: const Color(0xff3e6ec7),
//   ),
//   NavItemEntity(
//     title: 'أضف اعلانك',
//     image: Assets.imagesAdd,
//     activeColor: const Color(0xff6f92d6),
//   ),
//   NavItemEntity(
//     title: 'مشترياتي',
//     image: Assets.imagesCart,
//     activeColor: const Color(0xff6f92d6),
//   ),
//   NavItemEntity(
//     title: 'الحساب',
//     image: Assets.imagesUser,
//     activeColor: const Color(0xff6f92d6),
//   ),
// ];

class NavItemEntity {
  final String title;
  final String image;
  final Color activeColor;
  NavItemEntity({
    required this.title,
    required this.image,
    required this.activeColor,
  });
}
