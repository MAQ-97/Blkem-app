// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

SearchPeopleResponse welcomeFromMap(String str) => SearchPeopleResponse.fromMap(json.decode(str));

String welcomeToMap(SearchPeopleResponse data) => json.encode(data.toMap());

class SearchPeopleResponse {
  SearchPeopleResponse({
    this.errCode,
    this.code,
    this.message,
    this.data,
  });

  int errCode;
  int code;
  String message;
  SearchPeopleData data;

  factory SearchPeopleResponse.fromMap(Map<String, dynamic> json) => SearchPeopleResponse(
    errCode: json["err_code"],
    code: json["code"],
    message: json["message"],
    data: SearchPeopleData.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "err_code": errCode,
    "code": code,
    "message": message,
    "data": data.toMap(),
  };
}

class SearchPeopleData {
  SearchPeopleData({
    this.searchPeoples,
  });

  List<SearchPeople> searchPeoples;

  factory SearchPeopleData.fromMap(Map<String, dynamic> json) => SearchPeopleData(
    searchPeoples: List<SearchPeople>.from(json["searchs"].map((x) => SearchPeople.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "searchPeoples": List<dynamic>.from(searchPeoples.map((x) => x.toMap())),
  };
}

class SearchPeople {
  SearchPeople({
    this.id,
    this.about,
    this.followers,
    this.posts,
    this.avatar,
    this.last_active,
    this.fname,
    this.lname,
    this.email,
    this.verified,
    this.follow_privacy,
    this.assigned_badge,
    this.name,
    this.url,
    this.is_user,
    this.is_following,
    this.follow_requested,
  });

  int id;
  String about;
  int followers;
  int posts;
  String avatar;
  String last_active;
  String username;
  String fname;
  String lname;
  String email;
  String verified;
  String follow_privacy;
  String assigned_badge;
  String name;
  String url;
  bool is_user;
  bool is_following;
  bool follow_requested;

  factory SearchPeople.fromMap(Map<String, dynamic> json) => SearchPeople(
    id: json["id"],
    about: json["about"],
    followers: json["followers"],
    avatar: json["avatar"],
    last_active: json["last_active"],
    fname: json["fname"],
    lname: json["lname"],
    email: json["email"],
    verified: json["verified"],
    follow_privacy: json["follow_privacy"],
    assigned_badge: json["assigned_badge"],
    name: json["name"],
    url: json["url"],
    is_user: json["is_user"],
    is_following: json["is_reposter"],
    follow_requested: json["follow_requested"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "about": about,
    "followers": followers,
    "avatar": avatar,
    "last_active": last_active,
    "fname": fname,
    "lname": lname,
    "email": email,
    "verified": verified,
    "follow_privacy": follow_privacy,
    "assigned_badge": assigned_badge,
    "name": name,
    "url": url,
    "is_user": is_user,
    "is_following": is_following,
    "follow_requested": follow_requested,
  };
}

