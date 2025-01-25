
import 'package:flutter/material.dart';

class StepTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: StepTab(
          title: "الخطوة 1",
          isActive: true,
        )),
        SizedBox(
          width: 5,
        ),
        Expanded(child: StepTab(title: "الخطوة 2", isActive: false)),
        SizedBox(
          width: 5,
        ),
        Expanded(child: StepTab(title: "الخطوة 3", isActive: false)),
      ],
    );
  }
}

class StepTab extends StatelessWidget {
  final String title;
  final bool isActive, selected;

  StepTab({required this.title, required this.isActive, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.white,
        // borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}