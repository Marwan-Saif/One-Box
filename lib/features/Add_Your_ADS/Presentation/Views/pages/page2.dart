import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/custom_formfield.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/manager/cubit/add_ads_cubit.dart';
import 'package:one_box/generated/l10n.dart';

class AdsPage2 extends StatelessWidget {
  AdsPage2({
    super.key,
    required this.pageController,
  });
  final _formKey = GlobalKey<FormState>();
  final PageController pageController;

  /**********variables */ ///
  double? startSalary, endSalary, depositPercentage;
  String? place, endDate, lastPaymentDate;

  //*
  double? sellingPrice, buyingPrice, quantity;
  int? minimumOrderQuantity;

  ///********* */
  @override
  Widget build(BuildContext context) {
    var cubit = AddAdsCubit.get(context);
    return SingleChildScrollView(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
      child: Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          context.read<AddAdsCubit>().fixedPrice
              ?
              //*********fixed price  */
              Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.sellingPriceController,
                            lable: S.of(context).salePrice,
                            hint: S.of(context).enterPrice,
                            reqired: true,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.purcahesPriceController,
                            lable: S.of(context).purchasePrice,
                            hint: S.of(context).enterPrice,
                            reqired: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.currentStockController,
                            lable: S.of(context).currentStockQuantity,
                            hint: S.of(context).enterQuantity,
                            reqired: true,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.minimumOrderController,
                            lable: S.of(context).minimumOrderLimit,
                            hint: S.of(context).enterQuantity,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              :
              //*******auction */
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text("marwannnn"),
                    Text(
                      S.of(context).auctionPrice,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.startPriceController,
                            lable: S.of(context).initialPrice,
                            hint: S.of(context).enterPrice,
                            reqired: true,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.endPriceController,
                            lable: S.of(context).finalPrice,
                            hint: S.of(context).enterPrice,
                            reqired: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.depositPercentageController,
                            lable: S.of(context).depositPercentage,
                            hint: "0 %",
                            reqired: true,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.choseLocationController,
                            lable: S.of(context).chooseStore,
                            hint: S.of(context).store,
                            reqired: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.startDateController,
                            lable: S.of(context).expirationDate,
                            hint: S.of(context).ddmmyyyy,
                            reqired: true,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            controller: cubit.endDateController,
                            lable: S.of(context).lastDate,
                            hint: S.of(context).ddmmyyyy,
                            reqired: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FittedBox(
                            child: const Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              S.of(context).previousStep,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ])),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        cubit.secondStepData();
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      }
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FittedBox(
                            child: const Icon(
                              Icons.arrow_circle_left_outlined,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              S.of(context).nextStep,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ])),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
