import 'package:flutter/material.dart';
import 'package:news_app/Util/colors.dart';

import '../Data/data.dart';
import '../Model/article_model.dart';
import '../Widgets/blog_widgets.dart';

class CategoryView extends StatefulWidget {
  final String category;
  const CategoryView({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<ArticleModel> articles = [];
  bool loading = false;

  getCategory() async {
    CategoryNews newsClass = CategoryNews();
    await newsClass.getCategoryNews(widget.category);
    articles = newsClass.news;
    setState(() {
      loading = true;
    });
  }

  @override
  void initState() {
    getCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'App',
              style: TextStyle(color: appBarColor),
            )
          ],
        ),
      ),
      body: loading == false
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
            physics:  const ScrollPhysics(),
            child: Container(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: articles.length,
                  itemBuilder: ((context, index) => BlogWidgets(
                        imageUrl: articles[index].imageUrl.toString(),
                        title: articles[index].title.toString(),
                        description: articles[index].description.toString(),
                        blogUrl: articles[index].url.toString(),
                      )),
                ),
              ),
          ),
    );
  }
}
