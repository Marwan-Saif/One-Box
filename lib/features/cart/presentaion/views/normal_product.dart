import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_box/core/widgets/custom_search_appbar.dart';
import 'package:one_box/core/widgets/sugested_product_list.dart';
import 'package:one_box/features/cart/presentaion/widgets/comments.dart';
import 'package:one_box/features/cart/presentaion/widgets/product_card.dart';

class NormalProduct extends StatelessWidget {
  const NormalProduct({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductCard(),
              Comments(),
              SizedBox(height: 10),
              Text("   منتجات مقترحة",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SugestedProductList(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
