import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';
class Screens extends StatelessWidget {
  const Screens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("                              دليل سياحي"),
        backgroundColor: Colors.blue,
        
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent:200,
        childAspectRatio: 7/8,
       mainAxisSpacing: 10,
       crossAxisSpacing: 10,
        ),
        children: Categories_data.map((CategoriesData)=>CategoryItem(id: CategoriesData.id,
          title: CategoriesData.title, imageUrl:CategoriesData. imageUrl)
          ).toList()
        )
    );
  }
}

