import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/widget/glass.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Glass(
                width: 36,
                height: 36,
                isRounded: true,
                child: Center(
                  child: Icon(
                    Icons.chevron_left_rounded,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Bookmark
              },
              child: const Glass(
                width: 36,
                height: 36,
                isRounded: true,
                child: Center(
                  child: Icon(
                    Icons.bookmark_border_rounded,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
