import 'package:best_recipe_search_app/base_view_model.dart';
import 'package:best_recipe_search_app/models/api_response.dart';
import 'package:best_recipe_search_app/models/recipe_model.dart';
import 'package:best_recipe_search_app/services/recipe_services.dart';

class BestRecipeViewModel extends BaseViewModel {
  final RecipeServices _recipeServices = RecipeServices();
  List<RecipeModel> allRecipe = [];

  searchRecipe() async {
    setBusy(ViewState.busy);
    print("I am in");
    var response = await _recipeServices.searchRecipe();
    print(response.toString());
    allRecipe = response.data;
    setBusy(ViewState.idle);
  }
}
