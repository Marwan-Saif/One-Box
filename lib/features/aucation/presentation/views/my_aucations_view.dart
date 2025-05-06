import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:one_box/features/aucation/presentation/widgets/aucation_card_item.dart';

class MyAucationsView extends StatelessWidget {
  const MyAucationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 15),
        itemBuilder: (context, index) => AuctionCard().animate().fade().scale(),
        separatorBuilder: (context, index) => SizedBox(
              height: 15,
            ),
        itemCount: 10);
  }
}
