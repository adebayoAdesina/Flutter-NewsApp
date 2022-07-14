import 'package:flutter/material.dart';
import 'package:news_app/Util/colors.dart';
import 'package:news_app/views/article_view.dart';

class BlogWidgets extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String blogUrl;
  const BlogWidgets(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.blogUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleView(blogUrl: blogUrl),
          ),
        );
      }),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(imageUrl)),
            Text(
              title,
              style: const TextStyle(
                  color: titleColor, fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              description,
              textAlign: TextAlign.justify,
              style: const TextStyle(color: descriptionColor),
            )
          ],
        ),
      ),
    );
  }
}
