// Custom Dropdown Widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String label, hint;
  final List<String> items;
  final bool required;
  final Function(String?)? chosenValue;

  const CustomDropdown(
      {required this.label,
      required this.items,
      required this.hint,
      this.required = false,
      this.chosenValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: label, style: const TextStyle(fontSize: 15)),
              TextSpan(
                  text: required ? "*" : '',
                  style: const TextStyle(color: Colors.red, fontSize: 15))
            ],
          ),
        ),
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
          child: DropdownButtonFormField<String>(
            validator: (value) {
              if (required && value == null) {
                return 'This field is required';
              }
              return null;
            },
            items: items.map((item) {
              return DropdownMenuItem(value: item, child: Text(item));
            }).toList(),
            onChanged: (value) {
              chosenValue!(value);
            },
            decoration: InputDecoration(
              alignLabelWithHint: true,
              hintText: hint,
              border: const OutlineInputBorder(

                  // borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            ),
          ),
        ),
      ],
    );
  }
}
