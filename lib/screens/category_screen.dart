import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saheefa/controller/category_controller.dart';
import 'package:saheefa/screens/category_details.dart';
import 'package:saheefa/util/mycolor.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetBuilder<CategoriesController>(
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
              body: Obx(() => controller.loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : GridView.builder(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.width * 0.02,
                      ),
                      itemCount: controller.allCategoryModel.data.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 3 / 2),
                      itemBuilder: (ctx, index) => Obx(() => GestureDetector(
                            onTap: () async {
                              controller.selectItem(index);
                              await controller.getCategory(controller
                                  .allCategoryModel.data[index].termId);
                              Get.to(() => CategoryDetails(
                                    singleCategoryModel:
                                        controller.singleCategoryModel,
                                  ));
                            },
                            child: Card(
                                shadowColor: mycolor.blue,
                                elevation: 1,
                                color: controller.index == index
                                    ? mycolor.blue
                                    : mycolor.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text(
                                  controller.allCategoryModel.data[index].name,
                                  style: TextStyle(
                                    color: controller.index == index
                                        ? mycolor.white
                                        : mycolor.blue,
                                    fontSize: size.width * 0.05,
                                  ),
                                ))),
                          ))))),
        );
      },
    );
  }
}
