import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:one_box/generated/l10n.dart';

class RadioButtonSection extends StatefulWidget {
  final Function(String) onValueChanged;
  final List<String> values;
  final String? hint;
  RadioButtonSection(
      {Key? key, required this.onValueChanged, required this.values, this.hint})
      : super(key: key);

  @override
  State<RadioButtonSection> createState() => _RadioButtonSectionState();
}

class _RadioButtonSectionState extends State<RadioButtonSection> {
late   String _selectedValue ;
  @override
  void initState() {
    _selectedValue = widget.values[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.values.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.hint != null
            ? Text(
                widget.hint!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            : const SizedBox(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: RadioListTile<String>(
                contentPadding: const EdgeInsets.all(0),
                
                title: Text(widget.values[0]),
                value: widget.values[0],
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                    widget.onValueChanged(value);
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile<String>(
                title: Text(widget.values[1]),
                contentPadding: const EdgeInsets.all(0),
                
                value: widget.values[1],
                
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                    widget.onValueChanged(value);
                  });
                },
              ),
            ),
            
          ],
        ),
      ],
    );
  }
}
