import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/utils/scaler.dart';
import 'package:one_box/generated/l10n.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(
          callback: (p0) {
            currentIndex = p0;
            log(currentIndex.toString());
            setState(() {});
          },
        ),
        SizedBox(height: scaleValue(context, 20, type: "h")),
        IndexedStack(
          index: currentIndex,
          children: [
            const AboutProduct(),
            CommentSection(),
            CommentSection(),
          ],
        )
      ],
    );
  }
}

class CommentSection extends StatelessWidget {
  CommentSection({super.key});
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoTextFormFieldRow(
      autocorrect: true,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(1, 3),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      placeholder: S.of(context).writeYourComment,
      placeholderStyle: const TextStyle(
        color: Colors.grey,
        fontSize: 14,
      ),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
      maxLines: 4,
      minLines: 1,
      cursorColor: AppColors.gradiant4,
      controller: commentController,
      textInputAction: TextInputAction.done,
      onFieldSubmitted: (value) {},
    );
  }
}

class AboutProduct extends StatelessWidget {
  const AboutProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: AppColors.gradiant2,
        margin: EdgeInsetsDirectional.symmetric(
            horizontal: scaleValue(context, 16, type: "w")),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 8, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: S.of(context).category,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: scaleValue(context, 12, type: "sp")),
                ),
                TextSpan(
                  text: "ههاتف",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: scaleValue(context, 12, type: "sp")),
                )
              ])),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: S.of(context).brand,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: scaleValue(context, 12, type: "sp")),
                ),
                TextSpan(
                  text: "ههاتف",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: scaleValue(context, 12, type: "sp")),
                )
              ])),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: S.of(context).mileage,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: scaleValue(context, 12, type: "sp")),
                ),
                TextSpan(
                  text: "ههاتف",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: scaleValue(context, 12, type: "sp")),
                )
              ])),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: S.of(context).material,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: scaleValue(context, 12, type: "sp")),
                ),
                TextSpan(
                  text: "ههاتف",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: scaleValue(context, 12, type: "sp")),
                )
              ])),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: S.of(context).condition,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: scaleValue(context, 12, type: "sp")),
                ),
                TextSpan(
                  text: "ههاتف",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: scaleValue(context, 12, type: "sp")),
                )
              ])),
            ],
          ),
        ));
  }
}

class Header extends StatefulWidget {
  const Header({
    super.key,
    required this.callback,
  });
  final Function(int) callback;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            currentIndex = 0;
            widget.callback(currentIndex);

            setState(() {});
          },
          child: Text(
            S.of(context).about_product,
            style: TextStyle(
                shadows: [
                  Shadow(
                      color:
                          currentIndex == 0 ? Colors.grey : Colors.transparent,
                      blurRadius: 5,
                      offset: const Offset(1, 3))
                ],
                color: currentIndex == 0 ? AppColors.gradiant4 : Colors.grey,
                fontSize: scaleValue(context, 15),
                fontWeight: FontWeight.bold),
          ),
        ),
        GestureDetector(
          onTap: () {
            currentIndex = 1;
            widget.callback(currentIndex);

            setState(() {});
          },
          child: Text(
            S.of(context).the_rating,
            style: TextStyle(
                shadows: [
                  Shadow(
                      color:
                          currentIndex == 1 ? Colors.grey : Colors.transparent,
                      blurRadius: 5,
                      offset: const Offset(1, 3))
                ],
                color: currentIndex == 1 ? AppColors.gradiant4 : Colors.grey,
                fontSize: scaleValue(context, 15),
                fontWeight: FontWeight.bold),
          ),
        ),
        GestureDetector(
          onTap: () {
            currentIndex = 2;
            widget.callback(currentIndex);
            setState(() {});
          },
          child: Text(
            S.of(context).comments,
            style: TextStyle(
                color: currentIndex == 2 ? AppColors.gradiant4 : Colors.grey,
                shadows: [
                  Shadow(
                      color:
                          currentIndex == 2 ? Colors.grey : Colors.transparent,
                      blurRadius: 5,
                      offset: const Offset(1, 3))
                ],
                fontSize: scaleValue(context, 15),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
