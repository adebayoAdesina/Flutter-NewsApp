import 'package:flutter/material.dart';
import 'package:news_app/Model/category_model.dart';
import 'package:news_app/Widgets/category_widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              style: TextStyle(color: Colors.blueAccent),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: getCategories.length,
              itemBuilder: ((context, index) => CategoryWidgets(
                    imageUrl: getCategories[index].imageUrl.toString(),
                    categoryName: getCategories[index].categoryName.toString(),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
