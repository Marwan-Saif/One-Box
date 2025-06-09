import 'package:flutter/material.dart';

class SupCategoryItem extends StatelessWidget {
  const SupCategoryItem({
    super.key,
    required this.image,
    required this.title,
    required this.image2,
  });
  final String image, image2, title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: AspectRatio(
        aspectRatio: 14 / 14,
        child: Container(
          width: MediaQuery.of(context).size.width * .25,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 80,
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: NetworkImage(image)
                          // image: image
                          //  == ''
                          //     ? AssetImage(
                          //         Assets.imagesFruitIcon,
                          //       )
                          //     : NetworkImage("${EndPoints.images + image}")
                          )),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(image2), fit: BoxFit.fill),
                        color: Colors.amber[700],
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
