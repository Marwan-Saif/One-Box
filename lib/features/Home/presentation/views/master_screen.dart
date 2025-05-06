import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_box/core/widgets/custom_search_appbar.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/ads_view.dart';
import 'package:one_box/features/Home/presentation/views/home_view.dart';
import 'package:one_box/features/Home/presentation/views/widgets/nav_bar.dart';
import 'package:one_box/features/aucation/presentation/views/my_aucations_view.dart';
import 'package:one_box/features/cart/presentaion/views/cart_view.dart';
import 'package:one_box/features/profile/presentation/views/profileView.dart';

class MasterScreen extends StatefulWidget {
  const MasterScreen({super.key});

  @override
  _MasterScreen createState() => _MasterScreen();
}

class _MasterScreen extends State<MasterScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // log(_currentIndex.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _currentIndex != 4
            ? PreferredSize(
                preferredSize: const Size.fromHeight(110),
                child: CustomSearchAppBar(
                    controller: TextEditingController(),
                    onSearch: () {},
                    onCamera: () {}),
              )
            : null,
        body: IndexedStack(
          index: _currentIndex,
          children: [
            HomeView(),
            MyAucationsView(),
            AdsView(),
            const CartView(),
            Profileview(),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(callback: (index) {
          _currentIndex = index;

          setState(() {});
        }),
      ),
    );
  }
}
