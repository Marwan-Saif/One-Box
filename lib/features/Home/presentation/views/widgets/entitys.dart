
import 'package:flutter/material.dart';
import 'package:one_box/core/utils/app_images.dart';

List<NavItemEntity> navBarItems = [
  NavItemEntity(
    title: 'الرئيسية',
    image: Assets.imagesHome,
    activeColor: const Color(0xff3e6ec7),
  ),
  NavItemEntity(
    title: 'مزايدتي',
    image: Assets.imagesAucation,
    activeColor: const Color(0xff3e6ec7),
  ),
  NavItemEntity(
    title: 'أضف اعلانك',
    image: Assets.imagesAdd,
    activeColor: const Color(0xff6f92d6),
  ),
  NavItemEntity(
    title: 'مشترياتي',
    image: Assets.imagesCart,
    activeColor: const Color(0xff6f92d6),
  ),
  NavItemEntity(
    title: 'الحساب',
    image: Assets.imagesUser,
    activeColor: const Color(0xff6f92d6),
  ),
];

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