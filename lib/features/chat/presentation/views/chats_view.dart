import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_box/core/utils/app_colors.dart';
import 'package:one_box/core/utils/app_images.dart';
import 'package:one_box/features/chat/presentation/widgets/chat_screen.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(Assets.imagesOneBox),
          centerTitle: true,
          actions: [Image.asset(Assets.imagesLogo)],
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.gradiant4,
            ),
          )),
      body: ListView.separated(
          itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ChatScreen()));
              },
              child: ChatUserStatus()),
          separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
          itemCount: 10),
    );
  }
}

class ChatUserStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFDCE5FF), // Light blue background
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Profile Picture & Status
          Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.red.shade200,
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              const SizedBox(width: 6),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          // User Name
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "العميل 1",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "يكتب ....",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          // Time & Unread Messages
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "منذ 5 دقائق",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: const Color(0xFF4267B2), // Blue color
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  "4",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
