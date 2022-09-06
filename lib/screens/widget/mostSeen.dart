import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:saheefa/model/Posts/MostSeenPostsModel.dart';
import 'package:saheefa/widget/load_image.dart';

import '../../controller/Posts_controller/latest_posts_controller.dart';

class MostSeen extends StatelessWidget {
  final MostSeenPostsModel mostSeenPostsModel;

  MostSeen({this.mostSeenPostsModel});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height * 0.6;
    double _width = MediaQuery.of(context).size.width / 2.6;
    return SizedBox(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: mostSeenPostsModel.data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: _width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFFFFFFF),
                            const Color(0xff4E4E4E),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp,
                        ),
                      ),
                      child: LoadImage(
                        image: mostSeenPostsModel.data[index].guid,
                      ),
                    ),
                    Positioned(
                        top: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("images/vedio.png"),
                        )),
                  ],
                ),
              );
            }));
  }
}
