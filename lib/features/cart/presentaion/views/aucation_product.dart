import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/widgets/custom_search_appbar.dart';
import 'package:one_box/features/cart/presentaion/widgets/aucation_product_details.dart';
import 'package:one_box/features/cart/presentaion/widgets/comments.dart';
import 'package:one_box/features/cart/presentaion/widgets/product_card.dart';

class AucationProduct extends StatelessWidget {
  const AucationProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(110),
            child: CustomSearchAppBar(
                controller: TextEditingController(),
                onSearch: () {},
                onCamera: () {}),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ProductCard(),
                AuctionProductDetails(),
                Comments(),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
          )),
    );
  }
}
