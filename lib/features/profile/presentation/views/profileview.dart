import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:one_box/constant.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/core/utils/scaler.dart';
import 'package:one_box/features/chat/presentation/views/chats_view.dart';
import 'package:one_box/features/chat/presentation/widgets/chat_screen.dart';
import 'package:one_box/generated/l10n.dart';

class Profileview extends StatelessWidget {
  Profileview({super.key});
  // final ImagePickerHelper imagePickerHelper = ImagePickerHelper();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  S.of(context).profile,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ClipOval(
                child: Image.asset(
                  Assets.imagesMarwanSaim,
                  width: scaleValue(context, 120),
                  height: scaleValue(context, 120),
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "مروان سيف",
                style: TextStyle(
                    fontSize: scaleValue(context, 20),
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side:
                      const BorderSide(color: AppColors.gradiant4, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                icon: const Icon(
                  Icons.edit,
                  color: AppColors.gradiant4,
                ),
                label: const Text(
                  'تعديل',
                  style: TextStyle(
                    color: AppColors.gradiant4,
                    fontSize: 16,
                  ),
                ),
                onPressed: () {
                  log("pressed");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const ChatsView()));
                },
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 16.0, // Horizontal space between cards
              runSpacing: 16.0, // Vertical space between rows
              children: [
                ProfileCardItem(
                  title: S.of(context).wallet_and_bills,
                  image: Assets.imagesWallet,
                ),
                ProfileCardItem(
                  title: S.of(context).order_management,
                  image: Assets.imagesOrdersManagment,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const ChatsView()));
                  },
                  child: ProfileCardItem(
                    title: S.of(context).payment_disputes,
                    image: Assets.imagesPaymentDisputes,
                  ),
                ),
                ProfileCardItem(
                  title: S.of(context).shipping_and_delivery,
                  image: Assets.imagesDelivary,
                ),
                ProfileCardItem(
                  title: S.of(context).support_tickets,
                  image: Assets.imagesSupportTickets,
                ),
                ProfileCardItem(
                  title: S.of(context).returns,
                  image: Assets.imagesReturns,
                ),
                ProfileCardItem(
                  title: S.of(context).gifts,
                  image: Assets.imagesGifts,
                ),
                ProfileCardItem(
                  title: S.of(context).advertisements,
                  image: Assets.imagesAdss,
                ),
              ]).animate().fade().scale(),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Text(
                S.of(context).settings,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const LangCard(),
              const LogOutButton(),
              const SizedBox(height: 50),
            ],
          ),
        )
      ],
    );
  }
}

class LangCard extends StatefulWidget {
  const LangCard({
    super.key,
  });

  @override
  State<LangCard> createState() => _LangCardState();
}

class _LangCardState extends State<LangCard> {
  @override
  Widget build(BuildContext context) {
    return Card.filled(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            if (kLang == "ar") {
              kLang = "en";
              S.load(const Locale('en'));
            } else {
              kLang = "ar";
              S.load(const Locale('ar'));
            }
            // S.load(const Locale('en'));
            log("sssssss");
            setState(() {});
          },
          child: Row(
            children: [
              Image.asset(
                Assets.imagesFlag,
                fit: BoxFit.cover,
                color: Colors.black,
                // width: 10,
                height: 25,
              ),
              const SizedBox(width: 10),
              Text(
                S.of(context).language,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const Spacer(),
              Text(
                S.of(context).arabic,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(width: 6),
              const Icon(Icons.arrow_forward_ios_outlined),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card.filled(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: scaleValue(context, 25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesOff,
                  fit: BoxFit.cover,
                  color: Colors.black,
                  // width: 10,
                  height: 25,
                ),
                const SizedBox(width: 10),
                Text(
                  S.of(context).logout,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class ProfileCardItem extends StatelessWidget {
  const ProfileCardItem({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });
  final String title, image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
        width: scaleValue(context, 150),
        height: scaleValue(context, 150),
        decoration: BoxDecoration(
            // color: Colors.amber,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: []),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 2,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: scaleValue(context, 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
