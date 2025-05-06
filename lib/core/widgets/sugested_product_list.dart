import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:one_box/core/widgets/sugested_product_item.dart';

class SugestedProductList extends StatelessWidget {
  const SugestedProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 300, maxHeight: 400),
      child: AspectRatio(
        aspectRatio: 6 / 3,
        child: ListView.separated(
            shrinkWrap: true,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                const SugestedProductItem(index: 0).animate().fade().scale(),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 4),
      ),
    );
  }
}
