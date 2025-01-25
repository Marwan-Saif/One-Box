import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/widgets/required_lable.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/custom_dropdown.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/custom_formfield.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/radio_section.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/Views/widgets/step_taps.dart';

class AdsView extends StatefulWidget {
  const AdsView({super.key});

  @override
  State<AdsView> createState() => _AdsViewState();
}

class _AdsViewState extends State<AdsView> {
  bool fixed = false;
  String _gender = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: StepTabs(),
            ),
            const SizedBox(height: 15),
            // GenderSelection(),
            radio_section(
              callBack: (value) {},
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextFormField(
              hint: 'ادخل الاسم ',
              lable: "اسم المنتج ",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomDropdown(
                    hint: "اختر الفئة",
                    required: true,
                    label: "الفئة",
                    items: const ["اختيار 1", "اختيار 2"],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomDropdown(
                    hint: 'اختر الفئه الثانوية',
                    label: "الفئة الثانوية",
                    items: const ["اختيار 1", "اختيار 2"],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Expanded(
                  child:
                      CustomTextFormField(lable: 'الكمية', hint: "ادخل الكمية"),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: CustomDropdown(
                        label: 'حالة المنج',
                        items: ['ss', 'sss', 'ssss'],
                        hint: 'اختر الحالة'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomDropdown(
                        label: 'الدولة',
                        items: [
                          "s",
                          "ss",
                          "sss",
                          "ssss",
                        ],
                        hint: 'اختر الدولة')),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: CustomDropdown(
                        label: 'المكان /المنطقة',
                        items: [
                          "s",
                          "ss",
                          "sss",
                          "ssss",
                        ],
                        hint: 'اختر المنطقة'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomDropdown(
                        label: 'المدينة',
                        items: [
                          "s",
                          "ss",
                          "sss",
                          "ssss",
                        ],
                        hint: 'اختر المدينة')),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: CustomDropdown(
                        label: "الموقع ",
                        items: [
                          "s",
                          "ss",
                          "sss",
                          "ssss",
                        ],
                        hint: 'اختر الموقع'))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(lable: " منتج SKU", hint: 'مثال :12345'),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              lable: "الوصف",
              hint: "ادخل الوصف ",
              maxLines: 3,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              lable: "سياسة الاستبدال والاستراجاع",
              hint: "ادخل نص ",
              maxLines: 3,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
