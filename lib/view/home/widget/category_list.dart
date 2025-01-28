import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../util/colors.dart';
import '../../../util/styles.dart';

class CategoryList extends StatelessWidget {
    CategoryList({super.key});
  List<String> categories=["All","Action","Animation","Sci-fi","Thriller"];
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 40,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Container(

                margin: EdgeInsets.only(right: 10),
                padding: const EdgeInsets.symmetric(  horizontal: 14),
                decoration: BoxDecoration(
                  color: index==0?cateItemActiveColor:cateItemBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),

                ),

                child: Center(child: Text("${categories[index]}",style: akatabRegular.copyWith(fontSize: 14,color: Colors.white) ,))
            );

          }
      ),
    );
  }
}
