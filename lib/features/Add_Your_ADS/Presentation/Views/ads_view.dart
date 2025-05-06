import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/pages/page1.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/pages/page2.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/pages/page3.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/step_taps.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/manager/cubit/add_ads_cubit.dart';

class AdsView extends StatefulWidget {
  const AdsView({super.key});

  @override
  State<AdsView> createState() => _AdsViewState();
}

class _AdsViewState extends State<AdsView> {
  bool? fixed;

  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddAdsCubit(),
      child: BlocConsumer<AddAdsCubit, AddAdsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(30, 20),
                  topRight: Radius.elliptical(30, 20),
                ),
                color: AppColors.gradiant2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.only(bottom: 15),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: StepTabs(),
                ),

                // Expanded(child: AdsPage3())
                Expanded(
                  child: PageView(
                    controller: pageController,
                    allowImplicitScrolling: false,
                    physics: const NeverScrollableScrollPhysics(),
                    onPageChanged: (value) {
                      context.read<AddAdsCubit>().changeCurrentStep(value);
                    },
                    children: [
                      AdsPage1(
                        callBack: (value) {
                          context.read<AddAdsCubit>().changeFixedPrice(value);
                          // setState(() {});
                        },
                        pageController: pageController,
                      ),
                      AdsPage2(pageController: pageController),
                      AdsPage3(pageController: pageController)
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
