import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:readmore/readmore.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';
import 'package:saheefa/util/mycolor.dart';
import 'package:intl/intl.dart' as intl;

class CategoryDetails extends StatelessWidget {
  final SingleCategoryModel singleCategoryModel;

  const CategoryDetails({Key key, this.singleCategoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 4,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (ctx, index) {
            var inputDateFrom =
                DateTime.parse(singleCategoryModel.data.posts[index].postDate);

            var time = intl.DateFormat('hh:mm a').format(inputDateFrom);
            var date = intl.DateFormat.yMMMMEEEEd().format(inputDateFrom);
            print(time);
            final document =
                parse(singleCategoryModel.data.posts[index].postContent);
            final documentTitle =
                parse(singleCategoryModel.data.posts[index].postTitle);

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                          parse(documentTitle.body.text).documentElement.text,
                          style: TextStyle(
                            color: mycolor.red,
                          ),
                          maxLines: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ReadMoreText(
                        parse(document.body.text).documentElement.text.trim(),
                        trimLines: 3,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        textDirection: TextDirection.rtl,
                        lessStyle: TextStyle(
                            color: mycolor.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        moreStyle: TextStyle(
                            color: mycolor.red,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(time + date),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
