import 'package:flutter/material.dart';
import 'package:news_app/Data/data.dart';
import 'package:news_app/Model/article_model.dart';
import 'package:news_app/Model/category_model.dart';
import 'package:news_app/Util/colors.dart';
import 'package:news_app/Widgets/blog_widgets.dart';
import 'package:news_app/Widgets/category_widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ArticleModel> articles = [];
  bool loading = false;

  getNews() async {
    News newsClass = News();
    await newsClass.getTopNews();
    articles = newsClass.news;
    setState(() {
      loading = true;
    });
  }

  @override
  void initState() {
    getNews();
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
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: loading == false
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: getCategories.length,
                        itemBuilder: ((context, index) => CategoryWidgets(
                              imageUrl:
                                  getCategories[index].imageUrl.toString(),
                              categoryName:
                                  getCategories[index].categoryName.toString(),
                            )),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: articles.length,
                        itemBuilder: ((context, index) => BlogWidgets(
                            imageUrl: articles[index].imageUrl.toString(),
                            title: articles[index].title.toString(),
                            description: articles[index].description.toString(),
                            blogUrl: articles[index].url.toString())),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
