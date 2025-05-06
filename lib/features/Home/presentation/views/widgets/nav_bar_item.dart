import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.image,
    required this.title,
    required this.activeColor,
    this.active = false,
  });
  final String image, title;
  final Color activeColor;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: active ? activeColor : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(children: [
        const SizedBox(height: 5),
        Expanded(
            flex: 2,
            child: Image.asset(
              image,
              color: active ? Colors.white : null,
            )),
        Expanded(
            flex: 1,
            child: FittedBox(
                child: Text(
              title,
              style: TextStyle(color: active ? Colors.white : null),
            ))),
        const SizedBox(height: 5),
      ]),
    );
  }
}
