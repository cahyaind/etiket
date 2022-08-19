class Rekomen {
  int id;
  String name;
  String village;
  String subdistrict;
  int price;
  String imageUrl;
  int rating;
  String address;
  String mapUrl;
  List photos;
  String description;

  Rekomen({
    required this.id,
    required this.name,
    required this.village,
    required this.subdistrict,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.address,
    required this.mapUrl,
    required this.photos,
    required this.description,
  });

  factory Rekomen.fromJson(Map<String, dynamic> json) {
    return Rekomen(
      id: json['id'],
      name: json['name'],
      village: json['village'],
      subdistrict: json['subdistrict'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      rating: json['rating'],
      address: json['address'],
      mapUrl: json['address'],
      photos: json['photos'],
      description: json['description'],
    );
  }
}
