import 'package:best_recipe_search_app/models/recipe_ingridient_model.dart';

class RecipeModel {
  final String label;
  final String image;
  final String source;
  final String uri;
  final List<RecipeIngridientModel> ingredients;

  RecipeModel({
    required this.label,
    required this.image,
    required this.source,
    required this.uri,
    required this.ingredients,
  });

  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      label: json["label"],
      image: json["image"],
      source: json["source"],
      uri: json["uri"],
      ingredients: List.from(
          json["ingredients"].map((e) => RecipeIngridientModel.fromJson(e))),
      // RecipeIngridientModel.fromJson(json["ingridients"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "label": label,
        "image": image,
        "source": source,
        "uri": uri,
        "ingridients": List.from(ingredients.map((e) => e.toJson())),
      };
}
