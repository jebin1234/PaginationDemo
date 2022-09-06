class HomeUser {
  int? userId;
  int? id;
  String? title;

  HomeUser({this.userId, this.id, this.title});

  HomeUser.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}
