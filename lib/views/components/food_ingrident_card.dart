import 'package:best_recipe_search_app/models/recipe_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../sushi_screen.dart';

class FoodIngridentCard extends StatelessWidget {
  final RecipeModel recipe;
  const FoodIngridentCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SushiScreen(
                 heroTag: recipe.uri,
                        recipe: recipe
                      )));
        },
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: MediaQuery.of(context).size.width / 520.0,
              child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: recipe.image,
                    // "https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80",
                  )
                  // width: MediaQuery.of(context).size.width,
                  // height: ,
                  ),
            ),
            AspectRatio(
              aspectRatio: MediaQuery.of(context).size.width / 520.0,
              child: Hero(
                tag: recipe.uri,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 15,
              child: Container(
                height: 65.0,
                width: 65.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0XFF694F40),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                      size: 25,
                      color: Color(0xFFFFFFFF),
                    )),
              ),
            ),
            Positioned(
              left: 15.0,
              bottom: 35.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.label + "\n" + recipe.ingredients[0].food,
                    style: const TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF)),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    recipe.ingredients.length.toString() +
                        " Ingridents | " +
                        recipe.source,
                    style: const TextStyle(
                        fontSize: 20.0,
                        // fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
