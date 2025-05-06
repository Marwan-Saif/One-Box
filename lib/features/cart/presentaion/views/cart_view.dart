import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/helper_functions/app_router.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/core/utils/scaler.dart';
import 'package:one_box/generated/l10n.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopRow(),
        const SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          const CartItem().animate().fade().scale(),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: 10),
                  const SizedBox(
                    height: 30,
                  ),
                  const TotalCartFrame(),
                  const SizedBox(
                    height: 15,
                  ),
                  CartButton(
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.gradiant4,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "3 ${S.of(context).products}",
                  style: TextStyle(
                      color: Colors.white, fontSize: scaleValue(context, 12)),
                ),
                Text(
                  "5000 SAR",
                  style: TextStyle(
                      color: Colors.white, fontSize: scaleValue(context, 12)),
                ),
              ],
            ),
            Text(
              S.of(context).completePurchase,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: scaleValue(context, 18),
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
              size: scaleValue(context, 28),
            )
          ],
        ),
      ),
    );
  }
}

class TotalCartFrame extends StatelessWidget {
  const TotalCartFrame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: S.of(context).subtotal,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "(3 ${S.of(context).products})",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w500))
              ])),
              const Spacer(),
              Text(
                "5000 SAR",
                style: TextStyle(
                    fontSize: scaleValue(context, 12),
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            children: [
              Text(S.of(context).delivaryprice,
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              const Spacer(),
              Text(
                S.of(context).free,
                style: const TextStyle(
                    color: Color.fromARGB(255, 34, 181, 39),
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.7),
          ),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: S.of(context).total,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: scaleValue(context, 18),
                      ),
                    ),
                    TextSpan(
                      text: S.of(context).includingTax,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: scaleValue(context, 16),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                "5000,SAR",
                style: TextStyle(
                    fontSize: scaleValue(context, 18),
                    fontWeight: FontWeight.w800),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Image(
                  image: AssetImage(Assets.imagesVan),
                ),
                const SizedBox(width: 6),
                Text(
                  S.of(context).free_delivery,
                  style: TextStyle(
                      fontSize: scaleValue(context, 12),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Row(
              children: [
                const Image(
                  image: AssetImage(Assets.imagesEasyReturn),
                ),
                const SizedBox(width: 6),
                Text(
                  S.of(context).easy_return,
                  style: TextStyle(
                      fontSize: scaleValue(context, 12),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Row(
              children: [
                const Image(
                  image: AssetImage(Assets.imagesSamedayDelevary),
                ),
                const SizedBox(width: 6),
                Text(
                  S.of(context).deliverinsameday,
                  style: TextStyle(
                      fontSize: scaleValue(context, 12),
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
        const Divider()
      ],
    );
  }
}

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
