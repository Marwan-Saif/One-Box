import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/helper_functions/app_router.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/core/utils/scaler.dart';
import 'package:one_box/core/widgets/custom_snakbar.dart';
import 'package:one_box/features/Home/presentation/manager/home_cubit.dart';
import 'package:redacted/redacted.dart';
// import 'package:cached_network_image/cached_network_image.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  @override
  void initState() {
    HomeCubit.get(context).getCtegories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = HomeCubit.get(context);

        if (state is GetCategoriesDataSuccessState) {
          return Container(
              margin: const EdgeInsets.symmetric(vertical: 010),
              // height: scaleValue(context, , type: 'h'),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: List.generate(state.categoriesResponse.data!.length,
                      (index) {
                    return GestureDetector(
                      onTap: () {
                        log(state.categoriesResponse.data![index].id
                            .toString());
                        customSnackBar(context, "Under Development");
                        context.push(AppRouter.supCategoryView, extra: {
                          "id": state.categoriesResponse.data![index].id,
                          "imageUrl": state
                                  .categoriesResponse.data![index].imagePath ??
                              'https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9',
                          "title": state.categoriesResponse.data![index].name
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              fit: BoxFit.scaleDown,
                              height: scaleValue(context, 40, type: 'h'),
                              state.categoriesResponse.data![index].imagePath ??
                                  'https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9',
                            ),
                            const SizedBox(height: 5),
                            Text(
                              state.categoriesResponse.data![index].name ??
                                  'اجهزه الكترونيه',
                              maxLines: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      scaleValue(context, 12, type: 'sp')),
                            ),
                          ],
                        ).redacted(
                            context: context,
                            redact: state is GetCategoriesDataloadingState),
                      ),
                    );
                  }),
                ),
              ));
        } else {
          return Container(
              margin: const EdgeInsets.symmetric(vertical: 010),
              height: scaleValue(context, 150, type: 'h'),
              child: const Center(
                  child: Icon(
                Icons.error,
                size: 40,
              )));
        }
      },
    );
  }
}

class CategoriesSectionBody extends StatelessWidget {
  const CategoriesSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ).redacted(context: context, redact: true);
        },
      ),
    );
  }
}
