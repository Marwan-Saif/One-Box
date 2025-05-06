import 'package:flutter/material.dart';
import 'package:one_box/core/widgets/required_lable.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.lable,
    required this.hint,
    this.reqired = false,
    this.maxLines = 1, required this.controller,
  });
  final String lable, hint;
  final bool reqired;
  final int maxLines;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        requiredLable(lable: lable, required: reqired),
        const SizedBox(
          height: 15,
        ),
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 0,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: TextFormField(
            controller: controller,
            maxLines: maxLines,
            validator: (value) {
              if (reqired && value!.isEmpty) {
                return 'This field is required';
              }
            },
            style: const TextStyle(decoration: TextDecoration.none),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                contentPadding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 15, vertical: 6)),
          ),
        )
      ],
    );
  }
}
