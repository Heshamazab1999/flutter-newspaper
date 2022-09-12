import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saheefa/widget/avatar_card.dart';

import '../controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        return Scaffold(
          body:  Center(
            child: Obx(() => LargeAvatarWithButton(
              key: key,
              onPressed: () {
                controller.chooseProfileImage();
              },
              image: controller.images != ''
                  ? Image.file(
                File(controller.images),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              )
                  : Image.asset("images/icon_avatar.png"),
            )),
          ),
        );
      },
    );
  }
}
