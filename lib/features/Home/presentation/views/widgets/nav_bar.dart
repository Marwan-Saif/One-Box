import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/features/Home/presentation/views/widgets/entitys.dart';
import 'package:one_box/features/Home/presentation/views/widgets/nav_bar_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key, this.callback});
  final void Function(int index)? callback;
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: const EdgeInsetsDirectional.symmetric(vertical: 0),
      decoration: BoxDecoration(gradient: AppColors.gradient()),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: navBarItems(context).asMap().entries.map(
            (entry) {
              int index = entry.key;
              var e = entry.value;
              return GestureDetector(
                onTap: () {
                  setState(() => currentIndex = index);
                  widget.callback!(currentIndex);
                },
                child: BottomNavItem(
                  title: e.title,
                  image: e.image,
                  activeColor: e.activeColor,
                  active: currentIndex == index,
                ),
              );
            },
          ).toList()),
    );
  }
}
