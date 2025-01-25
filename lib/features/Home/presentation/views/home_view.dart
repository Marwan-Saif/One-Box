
import 'package:flutter/material.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/core/utils/scaler.dart';
import 'package:one_box/core/widgets/sugested_product_list.dart';
import 'package:one_box/features/Home/presentation/views/widgets/ads_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 010),
            height: scaleValue(context, 150, type: 'h'),
            child: GridView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                // childAspectRatio: 1,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Image.asset(
                      Assets.imagesAds,
                      fit: BoxFit.scaleDown,
                    )),
                    const SizedBox(height: 5),
                    Text(
                      'اجهزه الكترونيه',
                      maxLines: 1,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: scaleValue(context, 10, type: 'sp')),
                    ),
                  ],
                );
              },
            ),
          ),
    
          const SizedBox(height: 16),
    
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
    );
  }
}
