
import 'package:flutter/material.dart';
import 'package:one_box/core/utils/app_images.dart';

class SugestedProductItem extends StatelessWidget {
  const SugestedProductItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xffEBF0FE),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            // spreadRadius: 5,
            blurRadius: 15,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      width: 180,
      // color: Color(0xffEBF0FE),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Assets.imagesGalaxy),
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'هاتف سامسونج galaxy s 24 ultra',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '500 SAR',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            Text(
              'الشحن مجاني ',
              style: TextStyle(color: Color(0xff125dff), fontSize: 12),
            ),
          ]),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
                decoration: BoxDecoration(
                    color: const Color(0xff1750B9),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        // spreadRadius: 5,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ]),
                child: const Row(children: [
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'اشتري الان',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ]),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                decoration: BoxDecoration(
                    color: const Color(0xff1750B9),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        // spreadRadius: 5,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ]),
                child: const Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'اشتري الان',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
