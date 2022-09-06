/// success : true
/// data : {"ID":263281,"post_author":3490,"post_date":"2022-09-06 01:51:39","post_date_gmt":"2022-09-05 22:51:39","post_content":"<p style=\"text-align: justify;\">قدمت جامعة جازان تعازيها وصادق مواساتها في وفاة أحد طلابها والذي وافته المنية غرقاً على لسان متحدث جامعة جازان موسى محرق  .</p>\r\n<p style=\"text-align: justify;\">وقال محرق في تنويه له : اللهم أنزله منزلا مباركا وأنت خير المنزلين. يتقدم رئيس جامعة جازان <a href=\"https://twitter.com/hashtag/%D9%85%D8%B1%D8%B9%D9%8A_%D8%A7%D9%84%D9%82%D8%AD%D8%B7%D8%A7%D9%86%D9%8A?src=hashtag_click\">#مرعي_القحطاني</a> ومنسوبو الجامعة بخالص العزاء وصادق المواساة لأسرة الطالب فؤاد بن جابر هروبي، الذي وافاه الأجل غرقاً صباح اليوم،سائلين الله أن يتغمد الفقيد بواسع رحمته، ويسكنه فسيح جناته، ويلهم أهله الصبر والسلوان.</p>\r\n&nbsp;","post_title":"جامعة #جازان تنعى أحد طلابها المتوفي غرقاً","post_excerpt":"","post_status":"publish","comment_status":"open","ping_status":"open","post_password":"","post_name":"%d8%ac%d8%a7%d9%85%d8%b9%d8%a9-%d8%ac%d8%a7%d8%b2%d8%a7%d9%86-%d8%aa%d9%86%d8%b9%d9%89-%d8%a3%d8%ad%d8%af-%d8%b7%d9%84%d8%a7%d8%a8%d9%87%d8%a7-%d8%a7%d9%84%d9%85%d8%aa%d9%88%d9%81%d9%8a-%d8%ba%d8%b1","to_ping":"","pinged":"","post_modified":"2022-09-06 01:51:39","post_modified_gmt":"2022-09-05 22:51:39","post_content_filtered":"","post_parent":0,"guid":"https://www.kabrday.com/?p=263281","menu_order":0,"post_type":"post","post_mime_type":"","comment_count":0,"categoires":[{"term_id":1044,"name":"المملكة اليوم","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d9%85%d9%84%d9%83%d8%a9","term_group":0,"pivot":{"object_id":263281,"term_taxonomy_id":1044}}],"categories":[{"term_id":1044,"name":"المملكة اليوم","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d9%85%d9%84%d9%83%d8%a9","term_group":0,"pivot":{"object_id":263281,"term_taxonomy_id":1044}}]}
/// message : ""

class SinglePostModel {
  SinglePostModel({
      bool success, 
      Data data, 
      String message,}){
    _success = success;
    _data = data;
    _message = message;
}

  SinglePostModel.fromJson(dynamic json) {
    _success = json['success'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
  }
  bool _success;
  Data _data;
  String _message;
SinglePostModel copyWith({  bool success,
  Data data,
  String message,
}) => SinglePostModel(  success: success ?? _success,
  data: data ?? _data,
  message: message ?? _message,
);
  bool get success => _success;
  Data get data => _data;
  String get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    if (_data != null) {
      map['data'] = _data.toJson();
    }
    map['message'] = _message;
    return map;
  }

}

/// ID : 263281
/// post_author : 3490
/// post_date : "2022-09-06 01:51:39"
/// post_date_gmt : "2022-09-05 22:51:39"
/// post_content : "<p style=\"text-align: justify;\">قدمت جامعة جازان تعازيها وصادق مواساتها في وفاة أحد طلابها والذي وافته المنية غرقاً على لسان متحدث جامعة جازان موسى محرق  .</p>\r\n<p style=\"text-align: justify;\">وقال محرق في تنويه له : اللهم أنزله منزلا مباركا وأنت خير المنزلين. يتقدم رئيس جامعة جازان <a href=\"https://twitter.com/hashtag/%D9%85%D8%B1%D8%B9%D9%8A_%D8%A7%D9%84%D9%82%D8%AD%D8%B7%D8%A7%D9%86%D9%8A?src=hashtag_click\">#مرعي_القحطاني</a> ومنسوبو الجامعة بخالص العزاء وصادق المواساة لأسرة الطالب فؤاد بن جابر هروبي، الذي وافاه الأجل غرقاً صباح اليوم،سائلين الله أن يتغمد الفقيد بواسع رحمته، ويسكنه فسيح جناته، ويلهم أهله الصبر والسلوان.</p>\r\n&nbsp;"
/// post_title : "جامعة #جازان تنعى أحد طلابها المتوفي غرقاً"
/// post_excerpt : ""
/// post_status : "publish"
/// comment_status : "open"
/// ping_status : "open"
/// post_password : ""
/// post_name : "%d8%ac%d8%a7%d9%85%d8%b9%d8%a9-%d8%ac%d8%a7%d8%b2%d8%a7%d9%86-%d8%aa%d9%86%d8%b9%d9%89-%d8%a3%d8%ad%d8%af-%d8%b7%d9%84%d8%a7%d8%a8%d9%87%d8%a7-%d8%a7%d9%84%d9%85%d8%aa%d9%88%d9%81%d9%8a-%d8%ba%d8%b1"
/// to_ping : ""
/// pinged : ""
/// post_modified : "2022-09-06 01:51:39"
/// post_modified_gmt : "2022-09-05 22:51:39"
/// post_content_filtered : ""
/// post_parent : 0
/// guid : "https://www.kabrday.com/?p=263281"
/// menu_order : 0
/// post_type : "post"
/// post_mime_type : ""
/// comment_count : 0
/// categoires : [{"term_id":1044,"name":"المملكة اليوم","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d9%85%d9%84%d9%83%d8%a9","term_group":0,"pivot":{"object_id":263281,"term_taxonomy_id":1044}}]
/// categories : [{"term_id":1044,"name":"المملكة اليوم","slug":"%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d9%85%d9%84%d9%83%d8%a9","term_group":0,"pivot":{"object_id":263281,"term_taxonomy_id":1044}}]

class Data {
  Data({
      num id, 
      num postAuthor, 
      String postDate, 
      String postDateGmt, 
      String postContent, 
      String postTitle, 
      String postExcerpt, 
      String postStatus, 
      String commentStatus, 
      String pingStatus, 
      String postPassword, 
      String postName, 
      String toPing, 
      String pinged, 
      String postModified, 
      String postModifiedGmt, 
      String postContentFiltered, 
      num postParent, 
      String guid, 
      num menuOrder, 
      String postType, 
      String postMimeType, 
      num commentCount, 
      List<Categoires> categoires, 
      List<Categories> categories,}){
    _id = id;
    _postAuthor = postAuthor;
    _postDate = postDate;
    _postDateGmt = postDateGmt;
    _postContent = postContent;
    _postTitle = postTitle;
    _postExcerpt = postExcerpt;
    _postStatus = postStatus;
    _commentStatus = commentStatus;
    _pingStatus = pingStatus;
    _postPassword = postPassword;
    _postName = postName;
    _toPing = toPing;
    _pinged = pinged;
    _postModified = postModified;
    _postModifiedGmt = postModifiedGmt;
    _postContentFiltered = postContentFiltered;
    _postParent = postParent;
    _guid = guid;
    _menuOrder = menuOrder;
    _postType = postType;
    _postMimeType = postMimeType;
    _commentCount = commentCount;
    _categoires = categoires;
    _categories = categories;
}

  Data.fromJson(dynamic json) {
    _id = json['ID'];
    _postAuthor = json['post_author'];
    _postDate = json['post_date'];
    _postDateGmt = json['post_date_gmt'];
    _postContent = json['post_content'];
    _postTitle = json['post_title'];
    _postExcerpt = json['post_excerpt'];
    _postStatus = json['post_status'];
    _commentStatus = json['comment_status'];
    _pingStatus = json['ping_status'];
    _postPassword = json['post_password'];
    _postName = json['post_name'];
    _toPing = json['to_ping'];
    _pinged = json['pinged'];
    _postModified = json['post_modified'];
    _postModifiedGmt = json['post_modified_gmt'];
    _postContentFiltered = json['post_content_filtered'];
    _postParent = json['post_parent'];
    _guid = json['guid'];
    _menuOrder = json['menu_order'];
    _postType = json['post_type'];
    _postMimeType = json['post_mime_type'];
    _commentCount = json['comment_count'];
    if (json['categoires'] != null) {
      _categoires = [];
      json['categoires'].forEach((v) {
        _categoires.add(Categoires.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      _categories = [];
      json['categories'].forEach((v) {
        _categories.add(Categories.fromJson(v));
      });
    }
  }
  num _id;
  num _postAuthor;
  String _postDate;
  String _postDateGmt;
  String _postContent;
  String _postTitle;
  String _postExcerpt;
  String _postStatus;
  String _commentStatus;
  String _pingStatus;
  String _postPassword;
  String _postName;
  String _toPing;
  String _pinged;
  String _postModified;
  String _postModifiedGmt;
  String _postContentFiltered;
  num _postParent;
  String _guid;
  num _menuOrder;
  String _postType;
  String _postMimeType;
  num _commentCount;
  List<Categoires> _categoires;
  List<Categories> _categories;
Data copyWith({  num id,
  num postAuthor,
  String postDate,
  String postDateGmt,
  String postContent,
  String postTitle,
  String postExcerpt,
  String postStatus,
  String commentStatus,
  String pingStatus,
  String postPassword,
  String postName,
  String toPing,
  String pinged,
  String postModified,
  String postModifiedGmt,
  String postContentFiltered,
  num postParent,
  String guid,
  num menuOrder,
  String postType,
  String postMimeType,
  num commentCount,
  List<Categoires> categoires,
  List<Categories> categories,
}) => Data(  id: id ?? _id,
  postAuthor: postAuthor ?? _postAuthor,
  postDate: postDate ?? _postDate,
  postDateGmt: postDateGmt ?? _postDateGmt,
  postContent: postContent ?? _postContent,
  postTitle: postTitle ?? _postTitle,
  postExcerpt: postExcerpt ?? _postExcerpt,
  postStatus: postStatus ?? _postStatus,
  commentStatus: commentStatus ?? _commentStatus,
  pingStatus: pingStatus ?? _pingStatus,
  postPassword: postPassword ?? _postPassword,
  postName: postName ?? _postName,
  toPing: toPing ?? _toPing,
  pinged: pinged ?? _pinged,
  postModified: postModified ?? _postModified,
  postModifiedGmt: postModifiedGmt ?? _postModifiedGmt,
  postContentFiltered: postContentFiltered ?? _postContentFiltered,
  postParent: postParent ?? _postParent,
  guid: guid ?? _guid,
  menuOrder: menuOrder ?? _menuOrder,
  postType: postType ?? _postType,
  postMimeType: postMimeType ?? _postMimeType,
  commentCount: commentCount ?? _commentCount,
  categoires: categoires ?? _categoires,
  categories: categories ?? _categories,
);
  num get id => _id;
  num get postAuthor => _postAuthor;
  String get postDate => _postDate;
  String get postDateGmt => _postDateGmt;
  String get postContent => _postContent;
  String get postTitle => _postTitle;
  String get postExcerpt => _postExcerpt;
  String get postStatus => _postStatus;
  String get commentStatus => _commentStatus;
  String get pingStatus => _pingStatus;
  String get postPassword => _postPassword;
  String get postName => _postName;
  String get toPing => _toPing;
  String get pinged => _pinged;
  String get postModified => _postModified;
  String get postModifiedGmt => _postModifiedGmt;
  String get postContentFiltered => _postContentFiltered;
  num get postParent => _postParent;
  String get guid => _guid;
  num get menuOrder => _menuOrder;
  String get postType => _postType;
  String get postMimeType => _postMimeType;
  num get commentCount => _commentCount;
  List<Categoires> get categoires => _categoires;
  List<Categories> get categories => _categories;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = _id;
    map['post_author'] = _postAuthor;
    map['post_date'] = _postDate;
    map['post_date_gmt'] = _postDateGmt;
    map['post_content'] = _postContent;
    map['post_title'] = _postTitle;
    map['post_excerpt'] = _postExcerpt;
    map['post_status'] = _postStatus;
    map['comment_status'] = _commentStatus;
    map['ping_status'] = _pingStatus;
    map['post_password'] = _postPassword;
    map['post_name'] = _postName;
    map['to_ping'] = _toPing;
    map['pinged'] = _pinged;
    map['post_modified'] = _postModified;
    map['post_modified_gmt'] = _postModifiedGmt;
    map['post_content_filtered'] = _postContentFiltered;
    map['post_parent'] = _postParent;
    map['guid'] = _guid;
    map['menu_order'] = _menuOrder;
    map['post_type'] = _postType;
    map['post_mime_type'] = _postMimeType;
    map['comment_count'] = _commentCount;
    if (_categoires != null) {
      map['categoires'] = _categoires.map((v) => v.toJson()).toList();
    }
    if (_categories != null) {
      map['categories'] = _categories.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// term_id : 1044
/// name : "المملكة اليوم"
/// slug : "%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d9%85%d9%84%d9%83%d8%a9"
/// term_group : 0
/// pivot : {"object_id":263281,"term_taxonomy_id":1044}

class Categories {
  Categories({
      num termId, 
      String name, 
      String slug, 
      num termGroup, 
      Pivot pivot,}){
    _termId = termId;
    _name = name;
    _slug = slug;
    _termGroup = termGroup;
    _pivot = pivot;
}

  Categories.fromJson(dynamic json) {
    _termId = json['term_id'];
    _name = json['name'];
    _slug = json['slug'];
    _termGroup = json['term_group'];
    _pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }
  num _termId;
  String _name;
  String _slug;
  num _termGroup;
  Pivot _pivot;
Categories copyWith({  num termId,
  String name,
  String slug,
  num termGroup,
  Pivot pivot,
}) => Categories(  termId: termId ?? _termId,
  name: name ?? _name,
  slug: slug ?? _slug,
  termGroup: termGroup ?? _termGroup,
  pivot: pivot ?? _pivot,
);
  num get termId => _termId;
  String get name => _name;
  String get slug => _slug;
  num get termGroup => _termGroup;
  Pivot get pivot => _pivot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = _termId;
    map['name'] = _name;
    map['slug'] = _slug;
    map['term_group'] = _termGroup;
    if (_pivot != null) {
      map['pivot'] = _pivot.toJson();
    }
    return map;
  }

}

/// object_id : 263281
/// term_taxonomy_id : 1044

class Pivot {
  Pivot({
      num objectId, 
      num termTaxonomyId,}){
    _objectId = objectId;
    _termTaxonomyId = termTaxonomyId;
}

  Pivot.fromJson(dynamic json) {
    _objectId = json['object_id'];
    _termTaxonomyId = json['term_taxonomy_id'];
  }
  num _objectId;
  num _termTaxonomyId;
Pivot copyWith({  num objectId,
  num termTaxonomyId,
}) => Pivot(  objectId: objectId ?? _objectId,
  termTaxonomyId: termTaxonomyId ?? _termTaxonomyId,
);
  num get objectId => _objectId;
  num get termTaxonomyId => _termTaxonomyId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['object_id'] = _objectId;
    map['term_taxonomy_id'] = _termTaxonomyId;
    return map;
  }

}

/// term_id : 1044
/// name : "المملكة اليوم"
/// slug : "%d8%a3%d8%ae%d8%a8%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d9%85%d9%84%d9%83%d8%a9"
/// term_group : 0
/// pivot : {"object_id":263281,"term_taxonomy_id":1044}

class Categoires {
  Categoires({
      num termId, 
      String name, 
      String slug, 
      num termGroup, 
      Pivot pivot,}){
    _termId = termId;
    _name = name;
    _slug = slug;
    _termGroup = termGroup;
    _pivot = pivot;
}

  Categoires.fromJson(dynamic json) {
    _termId = json['term_id'];
    _name = json['name'];
    _slug = json['slug'];
    _termGroup = json['term_group'];
    _pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }
  num _termId;
  String _name;
  String _slug;
  num _termGroup;
  Pivot _pivot;
Categoires copyWith({  num termId,
  String name,
  String slug,
  num termGroup,
  Pivot pivot,
}) => Categoires(  termId: termId ?? _termId,
  name: name ?? _name,
  slug: slug ?? _slug,
  termGroup: termGroup ?? _termGroup,
  pivot: pivot ?? _pivot,
);
  num get termId => _termId;
  String get name => _name;
  String get slug => _slug;
  num get termGroup => _termGroup;
  Pivot get pivot => _pivot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['term_id'] = _termId;
    map['name'] = _name;
    map['slug'] = _slug;
    map['term_group'] = _termGroup;
    if (_pivot != null) {
      map['pivot'] = _pivot.toJson();
    }
    return map;
  }

}

/// object_id : 263281
/// term_taxonomy_id : 1044

