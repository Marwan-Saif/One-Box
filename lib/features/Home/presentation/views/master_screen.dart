import 'dart:developer';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/core/utils/scaler.dart';
import 'package:one_box/core/widgets/sugested_product_item.dart';
import 'package:one_box/core/widgets/sugested_product_list.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/ads_view.dart';
import 'package:one_box/features/Home/presentation/views/home_view.dart';
import 'package:one_box/features/Home/presentation/views/widgets/ads_item.dart';
import 'package:one_box/features/Home/presentation/views/widgets/ads_section.dart';
import 'package:one_box/features/Home/presentation/views/widgets/nav_bar.dart';
import 'package:one_box/features/Home/presentation/views/widgets/nav_bar_item.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreen createState() => _MasterScreen();
}

class _MasterScreen extends State<MasterScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // log(_currentIndex.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        forceMaterialTransparency: true,
        flexibleSpace: Container(
          // height: 60,
          decoration: BoxDecoration(
            gradient: AppColors.gradient(),
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          HomeView(),
          HomeView(),
          AdsView(),
          HomeView(),
          HomeView(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(callback: (index) {
        _currentIndex = index;
        setState(() {});
      }),
    );
  }
}
