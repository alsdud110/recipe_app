import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:recipe_app/components/recipe_list_item.dart';
import 'package:recipe_app/components/recipe_menu.dart';
import 'package:recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildRecipeAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: const [
              RecipeTitle(),
              RecipeMenu(),
              RecipeListItem(imageName: "coffee", title: "Made Coffee"),
              RecipeListItem(imageName: "burger", title: "Made Burger"),
              RecipeListItem(imageName: "pizza", title: "Made Pizza"),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: const [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
