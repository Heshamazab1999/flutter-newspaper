import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:saheefa/controller/Home/home_controller.dart';
import 'package:saheefa/screens/pages/newsDetail.dart';
import 'package:saheefa/screens/widget/categoryListItem.dart';
import 'package:saheefa/screens/widget/mostSeen.dart';
import 'package:saheefa/util/mycolor.dart';
import 'package:saheefa/widget/load_image.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        backgroundColor: mycolor.white,
        appBar: AppBar(
          backgroundColor: mycolor.white,
          elevation: 0,
        ),
        body: Obx(
          () => controller.loading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Search(),
                          SizedBox(height: 10.0),
                          // SizedBox(
                          //   height: 55,
                          //   child: ListView.builder(
                          //       scrollDirection: Axis.horizontal,
                          //       physics: BouncingScrollPhysics(),
                          //       shrinkWrap: true,
                          //       itemCount:
                          //           controller.allCategoryModel.data.length,
                          //       itemBuilder: (ctx, index) =>
                          //           Obx(() => BuildCategoryListItem(
                          //                 onTap: () async {
                          //                   controller.selectCategory(index);
                          //                   controller.getCategory(controller
                          //                       .allCategoryModel
                          //                       .data[index]
                          //                       .termId);
                          //                 },
                          //                 name: controller.allCategoryModel
                          //                     .data[index].name,
                          //                 color: controller.value.value == index
                          //                     ? mycolor.blue
                          //                     : mycolor.white,
                          //                 colorText:
                          //                     controller.value.value == index
                          //                         ? mycolor.white
                          //                         : Colors.black,
                          //               ))),
                          // ),
                          // SizedBox(height: 20.0),
                          // Obx(() => controller.loadingCategory.value == false
                          //     ? Center(
                          //         child: CircularProgressIndicator(),
                          //       )
                          //     : controller
                          //             .singleCategoryModel.data.posts.isEmpty
                          //         ? Center(
                          //             child: Text("Select a category"),
                          //           )
                          //         : SizedBox(
                          //             height: 200,
                          //             child: ListView.builder(
                          //               physics: BouncingScrollPhysics(),
                          //               scrollDirection: Axis.horizontal,
                          //               shrinkWrap: true,
                          //               itemCount: controller
                          //                   .singleCategoryModel
                          //                   .data
                          //                   .posts
                          //                   .length,
                          //               itemBuilder: (ctx, index) => Padding(
                          //                 padding: const EdgeInsets.all(8.0),
                          //                 child: BuildBanner(
                          //                   title: controller
                          //                       .singleCategoryModel
                          //                       .data
                          //                       .posts[index]
                          //                       .id
                          //                       .toString(),
                          //                 ),
                          //               ),
                          //             ),
                          //           )),
                          // Obx(() => Text(
                          //       controller.time.value,
                          //       style: Theme.of(context)
                          //           .textTheme
                          //           .bodyText1
                          //           .copyWith(color: mycolor.red),
                          //     )),
                          Text(
                            "Most Seen",
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(color: Colors.black),
                          ),
                          MostSeen(
                              mostSeenPostsModel:
                                  controller.mostSeenPostsModel),
                          Text(" latest News",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(color: Colors.black)),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemCount: controller.latestPostsModel.data.length,
                            itemBuilder: (context, index) {
                              controller.parseHtmlString(index);
                              var inputDateFrom = DateTime.parse(controller
                                  .latestPostsModel.data[index].postDate);

                              var time =
                                  DateFormat('hh:mm a').format(inputDateFrom);
                              print(time);
                              return GestureDetector(
                                onTap: () async {
                                  await controller.getSinglePost(controller
                                      .latestPostsModel.data[index].id);
                                  print(index);
                                  Get.to(() => NewsDetails(
                                        singlePostModel:
                                            controller.singlePostsModel,
                                      ));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Card(
                                    elevation: 3,
                                    child: Container(
                                      constraints:
                                          BoxConstraints(minHeight: 120),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: LoadImage(
                                                image: controller
                                                    .latestPostsModel
                                                    .data[index]
                                                    .guid),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  time,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2
                                                      .copyWith(
                                                          color: mycolor.red),
                                                ),
                                                AutoSizeText(
                                                  controller.content.value,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: false,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2
                                                      .copyWith(
                                                          color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ))),
        ),
      );
    });
  }
}

class Search extends StatelessWidget {
  const Search({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
          color: mycolor.fadegrey,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(color: Colors.white, blurRadius: 0.8, spreadRadius: 0.5),
          ]),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            prefixIcon: Icon(Icons.search),
            hintText: "seach .."),
      ),
    );
  }
}

class BuildBanner extends StatelessWidget {
  final String title;

  BuildBanner({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
          color: mycolor.myCustomBlack,
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      child: Text(title,
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: mycolor.red)),
    );
  }
}
