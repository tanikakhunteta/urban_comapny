class ServiceModel {
  String? images;
  String? title;

  ServiceModel({this.images, this.title});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    images = json['images'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['images'] = this.images;
    data['title'] = this.title;
    return data;
  }
}