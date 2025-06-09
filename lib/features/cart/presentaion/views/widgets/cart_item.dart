import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/helper_functions/app_router.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/utils/app_images.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.gradiant2,
          ), // color: Colors.amber,
          child: Column(
            children: [
              InkWell(
                onDoubleTap: () {
                  context.push(AppRouter.aucationProduct);
                },
                onTap: () {
                  context.push(AppRouter.normalProduct);
                },
                child: Row(children: [
                  Image.asset(Assets.imagesCartImage),
                  const Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Huwawi",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Text(
                            'Watch Fit 3 ماشة ساعة ذكية تصميم مرجع وأنثى .وصة 182 مقاس',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ]),
                  )
                ]),
              ),
              Row(children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 5, vertical: 2),
                          color: Colors.grey,
                          child: const Icon(Icons.add),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 10, vertical: 2),
                        child: Text(count.toString()),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (count > 1) count--;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 5, vertical: 2),
                          color: Colors.grey,
                          child: const Icon(Icons.remove),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete_outline)),
                ))
              ]),
            ],
          ),
        )
      ],
    );
  }
}
