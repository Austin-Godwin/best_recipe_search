import 'package:best_recipe_search_app/models/recipe_ingridient_model.dart';
import 'package:best_recipe_search_app/models/recipe_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Ingridients extends StatelessWidget {
  final RecipeIngridientModel ingredient;
  const Ingridients({Key? key, required this.ingredient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: AspectRatio(
        aspectRatio: MediaQuery.of(context).size.width / 90,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF7F8FC),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0XFFFFFFFF),
                  ),
                  child: CachedNetworkImage(imageUrl: ingredient.image),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.carpenter,
                  //     color: Color(0xFFBD1107),
                  //   ),
                  // ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  ingredient.food,
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B1A1F)),
                ),
                const Spacer(),
                Text(
                  ingredient.measurement,
                  style: const TextStyle(
                      // fontSize: 20.0,
                      // fontWeight: FontWeight.bold,
                      color: Color(0xFF1B1A1F)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
