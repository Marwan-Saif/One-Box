
import 'package:flutter/material.dart';

class radio_section extends StatefulWidget {
  radio_section({
    super.key,
    required this.callBack,
  });
  final void Function(String value) callBack;

  @override
  State<radio_section> createState() => _radio_sectionState();
}

class _radio_sectionState extends State<radio_section> {
  String groupValue = "سعر ثابت";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                  value: "سعر ثابت",
                  groupValue: groupValue,
                  onChanged: (x) {
                    groupValue = x!;
                    setState(() {});
                    // callBack(title);
                  }),
              Text("سعر ثابت"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
                value: 'مزايدة',
                groupValue: groupValue,
                onChanged: (x) {
                  groupValue = x!;
                  setState(() {});
                  // callBack(title);
                }),
            Text('مزايدة'),
          ],
        ),
      ],
    );
  }
}
