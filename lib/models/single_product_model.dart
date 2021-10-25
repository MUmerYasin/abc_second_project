class SingleProductModel {
  int id = 0;
  late String title;
  late double price;
  late String description;
  late String category;
  late String image;

  // late Rating rating;

  SingleProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    // required this.rating
  });

  SingleProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    // print(json['id'].runtimeType);
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    // rating = (json['rating'] != null ? new Rating.fromJson(json['rating']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;

    return data;
  }
}
