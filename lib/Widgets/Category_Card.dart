import 'package:flutter/material.dart';
import 'package:newsapp/Models/category_model.dart';
import 'package:newsapp/screens/category_screen.dart';

class Category_Card extends StatelessWidget {
  const Category_Card({super.key, required this.categoryref});

  final CategoryModel categoryref;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(
                category: categoryref.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: Container(
          height: 130,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(categoryref.image),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
              child: Text(
            categoryref.categoryName,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          )),
        ),
      ),
    );
  }
}
