import 'package:flutter/material.dart';
import 'package:zakrny_app/widgets/app_data.dart';
import 'package:zakrny_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        flexibleSpace: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'دليل سياحي',
              style: TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map(
          (categoryData) => CategoryItem(
            categoryData.id,
            categoryData.title,
            categoryData.imageUrl,
          ),
        ).toList(),
      ),
    );
  }
}
