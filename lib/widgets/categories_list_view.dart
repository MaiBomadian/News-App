import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Sports', image: 'assets/sports.jpg'),
    CategoryModel(categoryName: 'Business', image: 'assets/business.jpg'),
    CategoryModel(categoryName: 'Health', image: 'assets/health.jpeg'),
    CategoryModel(categoryName: 'Science', image: 'assets/science.jpg'),
    CategoryModel(categoryName: 'Technology', image: 'assets/technology.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
