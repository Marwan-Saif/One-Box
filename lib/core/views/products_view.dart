import 'package:flutter/material.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/widgets/sugested_product_item.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        // appBar: ,
        appBar: AppBar(
          title: Text("title"),
          centerTitle: true,

          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.centerEnd,
              end: AlignmentDirectional.centerStart,
              colors: [
                AppColors.gradiant1,
                AppColors.gradiant2,
                AppColors.gradiant3,
                AppColors.gradiant4,
              ],
            ),
          )),
          // backgroundColor: AppColors.gradiant3,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.only(end: 10.0, top: 20),
          child: Center(
            child: Wrap(
              spacing: 8,
              runSpacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: List.generate(
                  1,
                  (index) => SugestedProductItem(
                        index: 0,
                      )),
            ),
          ),
        ));
  }
}
