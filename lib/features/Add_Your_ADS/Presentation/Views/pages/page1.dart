import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:one_box/core/services/image_picker.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/custom_dropdown.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/custom_formfield.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/radio_sectionn.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/manager/cubit/add_ads_cubit.dart';
import 'package:one_box/generated/l10n.dart';

class AdsPage1 extends StatelessWidget {
  AdsPage1({
    super.key,
    required this.callBack,
    required this.pageController,
  });
  final Function(bool) callBack;
  final PageController pageController;
  final _formKey = GlobalKey<FormState>();
  //   static final TextEditingController proudctNameController =
  // TextEditingController();
  //********values */
  String? category, subCategory, status, country, region, city, location;
  bool fixedPrice = true;
  @override
  Widget build(BuildContext context) {
    var cubit = AddAdsCubit.get(context);
    return SingleChildScrollView(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
      child: Form(
        key: _formKey,
        child: Column(children: [
          // GenderSelection(),
          RadioButtonSection(
            onValueChanged: (value) {
              log(value.toString());
              bool x = value == S.of(context).fixed_price;
              callBack(x);
              fixedPrice = x;
            },
            values: [S.of(context).fixed_price, S.of(context).auction_price],
            // hint: "ss",
          ),
          // radio_section(
          //   callBack: (value) {
          //     print(value);
          //     callBack(value == "سعر ثابت");
          //   },
          // ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            controller: cubit.proudctNameController,
            hint: S.of(context).enterName,
            lable: S.of(context).productName,
            reqired: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: CustomDropdown(
                  hint: S.of(context).chooseCategory,
                  required: true,
                  label: S.of(context).category,
                  items: const ["اختيار 1", "اختيار 2"],
                  chosenValue: (p0) {
                    category = p0;
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomDropdown(
                  hint: S.of(context).chooseSubCategory,
                  label: S.of(context).subCategory,
                  items: const ["اختيار 1", "اختيار 2"],
                  chosenValue: (p0) {
                    subCategory = p0;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                    controller: cubit.productQuantityController,
                    lable: S.of(context).quantity,
                    hint: S.of(context).enterQuantity),
              ),
              const SizedBox(width: 10),
              Expanded(
                  child: CustomDropdown(
                label: S.of(context).productStatus,
                items: const ['ss', 'sss', 'ssss'],
                hint: S.of(context).chooseStatus,
                chosenValue: (p0) {
                  status = p0;
                },
              ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: CustomDropdown(
                label: S.of(context).country,
                items: const [
                  "s",
                  "ss",
                  "sss",
                  "ssss",
                ],
                hint: S.of(context).chooseCountry,
                chosenValue: (p0) {
                  country = p0;
                },
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomDropdown(
                label: S.of(context).locationRegion,
                items: const [
                  "s",
                  "ss",
                  "sss",
                  "ssss",
                ],
                hint: S.of(context).chooseRegion,
                chosenValue: (p0) {
                  region = p0;
                },
              ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  child: CustomDropdown(
                label: S.of(context).city,
                items: const [
                  "s",
                  "ss",
                  "sss",
                  "ssss",
                ],
                hint: S.of(context).chooseCity,
                chosenValue: (p0) {
                  city = p0;
                },
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomDropdown(
                label: S.of(context).location,
                items: const [
                  "s",
                  "ss",
                  "sss",
                  "ssss",
                ],
                hint: S.of(context).chooseLocation,
                chosenValue: (p0) {
                  location = p0;
                },
              ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
              controller: cubit.skuProductController,
              lable: S.of(context).sku,
              hint: S.of(context).example12345),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            controller: cubit.productDescriptionController,
            lable: S.of(context).description,
            hint: S.of(context).enterDescription,
            maxLines: 3,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            controller: cubit.exchangeReturnPolicyController,
            lable: S.of(context).exchangeReturnPolicy,
            hint: S.of(context).enterText,
            maxLines: 3,
          ),
          const SizedBox(
            height: 20,
          ),
          //********upload image */
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: InkWell(
                    onTap: () {
                      ImagePickerHelper().pickImage(context);
                    },
                    child: Container(
                      // width: 100,
                      // height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.drive_folder_upload_outlined),
                          Text("upload image")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: InkWell(
                    onTap: () {
                      ImagePickerHelper().pickImage(context);
                    },
                    child: Container(
                      // width: 100,
                      // height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.drive_folder_upload_outlined),
                          Text("upload image")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: InkWell(
                    onTap: () {
                      ImagePickerHelper().pickImage(context);
                    },
                    child: Container(
                      // width: 100,
                      // height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.drive_folder_upload_outlined),
                          Text("upload image")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
//*********createModel */
                  cubit.firstStepData(
                    fixedPrice: fixedPrice,
                    category: category!,
                    subCategory: subCategory,
                    status: status,
                    country: country,
                    region: region,
                    city: city,
                    location: location,
                  );
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                const Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 22,
                  color: Colors.white,
                ),
                Text(
                  S.of(context).nextStep,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ]))
        ]),
      ),
    );
  }
}
