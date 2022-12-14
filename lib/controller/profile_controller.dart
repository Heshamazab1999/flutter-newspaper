import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:saheefa/controller/base_controller.dart';
import 'package:saheefa/widget/choose_image_dialoge.dart';

class ProfileController extends BaseController {

  final _picker = ImagePicker();
  final _image = ''.obs;

  String get images => _image.value;

  selectImage() async {
    try {
      final XFile image = await _picker.pickImage(source: ImageSource.gallery);

      if (image != null) _image.value = image.path;
    } catch (e) {
      print(e.toString());
    }
  }
  Future<bool> requestImagePermission() async {
    if (Platform.isAndroid) {
      Permission.camera.request().isGranted;
      Permission.storage.request().isGranted;
      return true;
    } else if (Platform.isIOS) {
      Permission.camera.request().isGranted;
      Permission.photos.request().isGranted;
      return true;
    }
    return false;
  }

  chooseProfileImage() async {
    final status = await requestImagePermission();
    if (status) {
      if (_image.value.isEmpty || _image.value == '') {
        try {
          final isGallery = await Get.dialog(const ChooseImageDialog());
          XFile image;
          if (isGallery != null && isGallery == true) {
            image = await _picker.pickImage(source: ImageSource.gallery);
          } else if (isGallery != null && isGallery == false) {
            image = await _picker.pickImage(source: ImageSource.camera);
          }
          if (image != null) _image.value = image.path;
        } catch (e) {
          print(e);
        }
      }
    } else {
      print("error");
    }
  }

}
