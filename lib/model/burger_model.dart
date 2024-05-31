class Burger {
  String title;
  String image;
  String subTitle;
  String description;
  int quantity;
  bool isFav;
  double price;

  Burger({
    required this.title,
    required this.image,
    required this.subTitle,
    required this.description,
    required this.quantity,
    required this.isFav,
    required this.price,
  });

  // Factory constructor to create a Burger object from a map
  factory Burger.fromJson(Map<String, dynamic> json) {
    return Burger(
      title: json['title'],
      image: json['image'],
      subTitle: json['subTitle'],
      description: json['description'],
      quantity: json['quantity'],
      isFav: json['isFav'],
      price: json['price'],
    );
  }

  // Method to convert a Burger object to a map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
      'subTitle': subTitle,
      'description': description,
      'quantity': quantity,
      'isFav': isFav,
      'price': price,
    };
  }
}
