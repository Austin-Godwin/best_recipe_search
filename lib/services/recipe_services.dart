import 'dart:convert';
import 'package:best_recipe_search_app/models/api_response.dart';
import 'package:best_recipe_search_app/models/recipe_model.dart';
import 'package:http/http.dart' as http;

class RecipeServices {
  Future<ApiResponse> searchRecipe() async {
    try {
      http.Response response = await http.get(
        Uri.parse(
            "https://api.edamam.com/search?app_id=045beb36&app_key=8367ae8d26be6a790b175a45df519012&q=n"),
      );
      final data = jsonDecode(response.body)["hits"];
      print(data);
      final List<RecipeModel> recipe = List<RecipeModel>.from(
        data.map(
          (e) => RecipeModel.fromJson(e["recipe"]),
        ),
      );
      print(recipe);
      return ApiResponse<List<RecipeModel>>(
        data: recipe,
      );
    } catch (error) {
      return ApiResponse(hasError: true, errorMessage: error.toString());
    }
  }
}
