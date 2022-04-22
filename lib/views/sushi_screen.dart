import 'package:best_recipe_search_app/models/recipe_ingridient_model.dart';
import 'package:best_recipe_search_app/models/recipe_model.dart';
import 'package:best_recipe_search_app/views/components/ingridients.dart';
import 'package:best_recipe_search_app/views/components/preview_ingridient_card.dart';
import 'package:best_recipe_search_app/views/components/recipe_app_bar.dart';
import 'package:best_recipe_search_app/views/components/rectangular_floating_action_button.dart';
import 'package:best_recipe_search_app/views/components/text_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SushiScreen extends StatelessWidget {
  final String heroTag;
  final RecipeModel recipe;
  const SushiScreen({Key? key, required this.heroTag, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFFBFCFE),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomScrollView(
              slivers: [
                const RecipeAppBar(),
                SliverToBoxAdapter(
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 35.0),
                      child: PreviewIngridientCard(heroTag: heroTag,)),
                ),
                SliverPinnedHeader(
                  child: Container(
                    color: const Color(0XFFFBFCFE),
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Ingredients (12)",
                          style: TextStyle(
                              color: Color(0xFF161B4D),
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        TextIconButton()
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                      ((context, index) => Ingridients(ingredient: recipe.ingredients[index],)),
                      childCount: 10),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const RectangularFloatingActionButton());
  }
}