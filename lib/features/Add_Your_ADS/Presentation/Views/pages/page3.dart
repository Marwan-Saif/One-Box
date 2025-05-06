import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:one_box/core/utils/scaler.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/custom_dropdown.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/custom_formfield.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/radio_sectionn.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/manager/cubit/add_ads_cubit.dart';
import 'package:one_box/generated/l10n.dart';

class AdsPage3 extends StatefulWidget {
  AdsPage3({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  State<AdsPage3> createState() => _AdsPage3State();
}

class _AdsPage3State extends State<AdsPage3> {
  final _formKey = GlobalKey<FormState>();

  /*************** variables *************/ ///
  bool showNumber = true;
  bool readyForDelivery = true;
  bool deliverd = true;

  String? shoseWeight, ShoseLength, ShoseWidth;
  //**************  ***
  @override
  Widget build(BuildContext context) {
    var cubit = AddAdsCubit.get(context);
    return SingleChildScrollView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RadioButtonSection(
              hint: S.of(context).show_number,
              values: [S.of(context).yes, S.of(context).no],
              onValueChanged: (value) {}),
          RadioButtonSection(
              hint: S.of(context).product_ready_for_delivery,
              values: [S.of(context).yes, S.of(context).no],
              onValueChanged: (value) {
                deliverd = value == S.of(context).yes;
                setState(() {});
              }),
          deliverd
              ? Form(
                  key: _formKey,
                  child: Column(children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomDropdown(
                            label: S.of(context).choose_weight,
                            required: showNumber,
                            items: const ['1', '2', '3', '4'],
                            hint: S.of(context).choose_weight,
                            chosenValue: (p0) {
                              shoseWeight = p0;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: CustomDropdown(
                            label: S.of(context).choose_length,
                            required: showNumber,
                            items: const ['1', '2', '3', '4'],
                            hint: S.of(context).choose_length,
                            chosenValue: (p0) {
                              ShoseLength = p0;
                            },
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
                          child: CustomDropdown(
                            required: showNumber,
                            label: S.of(context).chooseOffer,
                            items: const ['1', '2', '3', '4'],
                            hint: S.of(context).chooseOffer,
                            chosenValue: (p0) {
                              ShoseWidth = p0;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                            child: CustomTextFormField(
                                controller: cubit.productReceivingWarehouse,
                                reqired: showNumber,
                                lable: S.of(context).productReceivingWarehouse,
                                hint: S.of(context).enterThePlace)),
                      ],
                    ),
                  ]),
                )
              : SizedBox(),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      if (true) {
                        widget.pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(vertical: 10)),
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
              SizedBox(
                width: scaleValue(context, 15),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      if (deliverd) {
                        if (_formKey.currentState!.validate()) {
                          log("valiiiiiiiiiiiiiiiid");
                          // widget.pageController.nextPage(
                          //     duration: const Duration(milliseconds: 500),
                          //     curve: Curves.easeInOut);
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 10)),
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
        ]));
  }
}
