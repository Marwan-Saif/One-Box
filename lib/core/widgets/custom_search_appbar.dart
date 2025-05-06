import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/helper_functions/app_router.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/core/utils/scaler.dart';

class CustomSearchAppBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSearch;
  final VoidCallback onCamera;

  const CustomSearchAppBar({
    Key? key,
    required this.controller,
    required this.onSearch,
    required this.onCamera,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(gradient: AppColors.gradient()),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: AppColors.gradiant3,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.gradiant3),
              ),
              child: Row(children: [
                // Search Field
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: TextFormField(
                      // autocorrect: false,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          border: InputBorder.none,
                          suffixIconConstraints: BoxConstraints(
                            minWidth: 5,
                            minHeight: 5,
                          ),
                          suffixIcon: InkWell(
                              child: Container(
                                  child: Icon(Icons.camera_alt,
                                      color: Colors.grey)),
                              onTap: () {})),
                      controller: TextEditingController(),
                      maxLines: null,
                    ),
                  ),
                ),

                // Search Button
                InkWell(
                  onTap: onSearch,
                  child: SizedBox(
                      width: scaleValue(context, 40, type: "sp"),
                      child: const Icon(Icons.search, color: Colors.white)),
                ),
              ]),
            ),
          ),
        ),
        Expanded(
            child: Container(
          // color: ,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    GoRouter.of(context).canPop() ? context.pop() : null;
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.gradiant4,
                  )),
              Image.asset(
                Assets.imagesOneBox,
                height: scaleValue(context, 20, type: "h"),
              ),
              Image.asset(
                Assets.imagesLogo,
                height: scaleValue(context, 35, type: "h"),
              )
            ],
          ),
        ))
      ],
    );
  }
}
