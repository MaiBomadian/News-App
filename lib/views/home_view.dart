import 'package:flutter/material.dart';

import 'package:news_app/widgets/categories_list_view.dart';

import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
              text: 'News',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              children: [
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                      color: Colors.amber, fontWeight: FontWeight.bold),
                )
              ]),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          )),
    );
  }
}
