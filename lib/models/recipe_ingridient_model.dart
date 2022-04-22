class RecipeIngridientModel {
  final String image;
  final String food;
  final String measurement;

  RecipeIngridientModel({
    required this.image,
    required this.food,
    required this.measurement,
  });

  factory RecipeIngridientModel.fromJson(Map<String, dynamic> json) {
    return RecipeIngridientModel(
      image: json["image"],
      food: json["food"],
      measurement: json["text"],
    );
  }

  Map<String, dynamic> toJson() => {
    "image": image,
    "food": food,
    "text": measurement,
  };
}