import 'package:flutter/material.dart';
import 'package:newsapp/Models/category_model.dart';
import 'Category_Card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
        image:
            'https://images.pexels.com/photos/935979/pexels-photo-935979.jpeg?auto=compress&cs=tinysrgb&w=600',
        categoryName: 'Business'),
    CategoryModel(
        image:
            'https://images.pexels.com/photos/1298601/pexels-photo-1298601.jpeg?auto=compress&cs=tinysrgb&w=600',
        categoryName: 'Entertainment'),
    CategoryModel(
        image:
            'https://images.pexels.com/photos/242492/pexels-photo-242492.jpeg?auto=compress&cs=tinysrgb&w=600',
        categoryName: 'General'),
    CategoryModel(
        image:
            'https://images.pexels.com/photos/5994868/pexels-photo-5994868.jpeg?auto=compress&cs=tinysrgb&w=600',
        categoryName: 'Health'),
    CategoryModel(
        image:
            'https://images.pexels.com/photos/3769714/pexels-photo-3769714.jpeg?auto=compress&cs=tinysrgb&w=600',
        categoryName: 'Science'),
    CategoryModel(
        image:
            'https://images.pexels.com/photos/1619860/pexels-photo-1619860.jpeg?auto=compress&cs=tinysrgb&w=600',
        categoryName: 'Sports'),
    CategoryModel(
        image:
            'https://images.pexels.com/photos/6153354/pexels-photo-6153354.jpeg?auto=compress&cs=tinysrgb&w=600',
        categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Category_Card(
              categoryref: categories[index],
            );
          }),
    );
  }
}
