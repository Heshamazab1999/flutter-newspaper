import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html/parser.dart';
import 'package:saheefa/model/Posts/SinglePostModel.dart';
import 'package:saheefa/util/mycolor.dart';
import 'package:saheefa/widget/load_image.dart';

// ignore: must_be_immutable
class NewsDetails extends StatelessWidget {
  final SinglePostModel singlePostModel;
  final bool load;

  NewsDetails({
    Key key,
    this.singlePostModel,
    this.load,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final document = parse(singlePostModel.data.postContent);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mycolor.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: LoadImage(
                    image: singlePostModel.data.guid,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset("images/facebook.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset("images/twitter.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset("images/share.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "share",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: mycolor.red),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("today news",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: mycolor.red))
                  ],
                ),
              ),
              Text(parse(document.body.text).documentElement.text),
            ],
          ),
        ),
      ),
    );
  }
}
