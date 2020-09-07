class Post {
  List<PostData> data;

  Post({this.data});

  Post.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<PostData>();
      json['data'].forEach((v) {
        data.add(new PostData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PostData {
  String id;
  String createdDate;
  String createdById;
  String updatedDate;
  String updatedById;
  String postedAt;
  int code;
  String mainPhoto;
  String status;
  String slug;
  int isNew;
  int isActive;
  String recordTypeId;
  String mainPhotoPreview;
  String recordType;
  Langs langs;
  int ordering;

  PostData(
      {this.id,
        this.createdDate,
        this.createdById,
        this.updatedDate,
        this.updatedById,
        this.postedAt,
        this.code,
        this.mainPhoto,
        this.status,
        this.slug,
        this.isNew,
        this.isActive,
        this.recordTypeId,
        this.mainPhotoPreview,
        this.recordType,
        this.langs,
        this.ordering});

  PostData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdDate = json['created_date'];
    createdById = json['created_by_id'];
    updatedDate = json['updated_date'];
    updatedById = json['updated_by_id'];
    postedAt = json['posted_at'];
    code = json['code'];
    mainPhoto = json['main_photo'];
    status = json['status'];
    slug = json['slug'];
    isNew = json['is_new'];
    isActive = json['is_active'];
    recordTypeId = json['record_type_id'];
    mainPhotoPreview = json['main_photo_preview'];
    recordType = json['record_type'];
    langs = json['langs'] != null ? new Langs.fromJson(json['langs']) : null;
    ordering = json['ordering'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_date'] = this.createdDate;
    data['created_by_id'] = this.createdById;
    data['updated_date'] = this.updatedDate;
    data['updated_by_id'] = this.updatedById;
    data['posted_at'] = this.postedAt;
    data['code'] = this.code;
    data['main_photo'] = this.mainPhoto;
    data['status'] = this.status;
    data['slug'] = this.slug;
    data['is_new'] = this.isNew;
    data['is_active'] = this.isActive;
    data['record_type_id'] = this.recordTypeId;
    data['main_photo_preview'] = this.mainPhotoPreview;
    data['record_type'] = this.recordType;
    if (this.langs != null) {
      data['langs'] = this.langs.toJson();
    }
    data['ordering'] = this.ordering;
    return data;
  }
}

class Langs {
  En en;
  En km;

  Langs({this.en, this.km});

  Langs.fromJson(Map<String, dynamic> json) {
    en = json['en'] != null ? new En.fromJson(json['en']) : null;
    km = json['km'] != null ? new En.fromJson(json['km']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.en != null) {
      data['en'] = this.en.toJson();
    }
    if (this.km != null) {
      data['km'] = this.km.toJson();
    }
    return data;
  }
}

class En {
  String id;
  String createdDate;
  String createdById;
  String updatedDate;
  String updatedById;
  int isBackup;
  String langCode;
  String title;
  String shortDesc;
  String contents;
  Null metaTitle;
  Null metaDesc;
  Null metaKeyword;
  Null targetLink;
  String postsId;
  Null description;
  Null note;
  Null subtitle;

  En(
      {this.id,
        this.createdDate,
        this.createdById,
        this.updatedDate,
        this.updatedById,
        this.isBackup,
        this.langCode,
        this.title,
        this.shortDesc,
        this.contents,
        this.metaTitle,
        this.metaDesc,
        this.metaKeyword,
        this.targetLink,
        this.postsId,
        this.description,
        this.note,
        this.subtitle});

  En.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdDate = json['created_date'];
    createdById = json['created_by_id'];
    updatedDate = json['updated_date'];
    updatedById = json['updated_by_id'];
    isBackup = json['is_backup'];
    langCode = json['lang_code'];
    title = json['title'];
    shortDesc = json['short_desc'];
    contents = json['contents'];
    metaTitle = json['meta_title'];
    metaDesc = json['meta_desc'];
    metaKeyword = json['meta_keyword'];
    targetLink = json['target_link'];
    postsId = json['posts_id'];
    description = json['description'];
    note = json['note'];
    subtitle = json['subtitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_date'] = this.createdDate;
    data['created_by_id'] = this.createdById;
    data['updated_date'] = this.updatedDate;
    data['updated_by_id'] = this.updatedById;
    data['is_backup'] = this.isBackup;
    data['lang_code'] = this.langCode;
    data['title'] = this.title;
    data['short_desc'] = this.shortDesc;
    data['contents'] = this.contents;
    data['meta_title'] = this.metaTitle;
    data['meta_desc'] = this.metaDesc;
    data['meta_keyword'] = this.metaKeyword;
    data['target_link'] = this.targetLink;
    data['posts_id'] = this.postsId;
    data['description'] = this.description;
    data['note'] = this.note;
    data['subtitle'] = this.subtitle;
    return data;
  }
}
