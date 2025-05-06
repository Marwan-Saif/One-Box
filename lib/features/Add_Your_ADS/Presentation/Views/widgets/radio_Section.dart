import 'package:flutter/material.dart';

class radio_section extends StatefulWidget {
  radio_section({
    super.key,
    required this.callBack,
    this.value = "سعر ثابت",
  });
  final ValueChanged<String> callBack;
  final String value;

  @override
  State<radio_section> createState() => _radio_sectionState();
}

class _radio_sectionState extends State<radio_section> {
  late String groupValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    groupValue = widget.value;
  }

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
                    widget.callBack('groupValue');
                  }),
              const Text("سعر ثابت"),
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
                  widget.callBack("groupValue");
                }),
            const Text('مزايدة'),
          ],
        ),
      ],
    );
  }
}
