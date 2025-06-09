import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_box/core/services/getit_service.dart';
import 'package:one_box/core/widgets/sugested_product_list.dart';
import 'package:one_box/features/Home/domain/home_repo.dart';
import 'package:one_box/features/Home/presentation/manager/home_cubit.dart';
import 'package:one_box/features/Home/presentation/views/widgets/ads_section.dart';
import 'package:one_box/features/Home/presentation/views/widgets/categories_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(getit.get<HomeRepo>()),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Filter Tabs

            // Carousel
            const AdsSection(),

            Container(
              height: 16,
              decoration: BoxDecoration(
                // color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 5,
                    blurRadius: 15,
                    offset: const Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
            ),

            // Categories Grid
            const CategoriesSection(),

            const SizedBox(height: 0),

            // Suggested Products
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'مقترحة لك',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SugestedProductList()
          ],
        ),
      ),
    );
  }
}
