import 'package:flutter/material.dart';
import 'package:one_box/core/widgets/required_lable.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.lable,
    required this.hint,
    this.reqired = false,
    this.maxLines = 1,
  });
  final String lable, hint;
  final bool reqired;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        requiredLable(lable: lable, required: reqired),
        SizedBox(
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
            maxLines: maxLines,
            validator: (value) {},
            style: TextStyle(decoration: TextDecoration.none),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                contentPadding: EdgeInsetsDirectional.symmetric(
                    horizontal: 15, vertical: 6)),
          ),
        )
      ],
    );
  }
}
