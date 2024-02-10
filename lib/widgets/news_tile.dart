import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )
              :const Placeholder(
                  fallbackHeight: 70,
                  fallbackWidth: double.infinity,
                  strokeWidth: 3,
                  color: Colors.black,
                ),
        ),
      const  SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black87),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      const  SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          style: const TextStyle(color: Colors.grey, fontSize: 14),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
