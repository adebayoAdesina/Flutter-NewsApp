import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';

class CategoryWidgets extends StatelessWidget {
  final String imageUrl;
  final String categoryName;
  const CategoryWidgets(
      {Key? key, required this.imageUrl, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryView(category: categoryName.toLowerCase())));
      }),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                width: 120,
                height: 60,
              ),
            ),
            Container(
              color: Colors.black26,
              alignment: Alignment.center,
              width: 120,
              height: 60,
              child: Text(
                categoryName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
