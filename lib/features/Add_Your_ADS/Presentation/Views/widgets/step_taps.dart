import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_box/features/Add_Your_ADS/Presentation/manager/cubit/add_ads_cubit.dart';
import 'package:one_box/generated/l10n.dart';

class StepTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: StepTab(
          title: S.of(context).step_1,
          index: 0,
          currentIndex: context.read<AddAdsCubit>().currentStep,
        )),
        const SizedBox(
          width: 5,
        ),
        Expanded(
            child: StepTab(
          title: S.of(context).step_2,
          index: 1,
          currentIndex: context.read<AddAdsCubit>().currentStep,
        )),
        const SizedBox(
          width: 5,
        ),
        Expanded(
            child: StepTab(
          title: S.of(context).step_3,
          index: 2,
          currentIndex: context.read<AddAdsCubit>().currentStep,
        )),
      ],
    );
  }
}

class StepTab extends StatelessWidget {
  final String title;
  final int index, currentIndex;
  StepTab(
      {required this.title, required this.index, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: index == currentIndex
            ? Colors.blue
            : index < currentIndex
                ? const Color(0xff6b8fd1)
                : Colors.white,
        // borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: index == currentIndex
              ? Colors.white
              : index < currentIndex
                  ? Colors.white
                  : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
