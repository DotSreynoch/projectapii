class Slide {
  int? id, status;
  String? title, description, images, link;

  // Construtor for model
  Slide({this.id, this.status, this.title, this.description, this.images, this.link});

  Slide.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    description = json['description'];
    images = json['images'];
    link = json['link'];
    status = json['status'];
  }

}