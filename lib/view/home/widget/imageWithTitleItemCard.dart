import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment_1/util/styles.dart';

import '../../../model/dataModel.dart';


class ImageWithTitleItemCard extends StatelessWidget {
  const ImageWithTitleItemCard({super.key, required this.data, required this.width});
  final DataClass data ;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10) ,
      width: width,


      child: Column(
        children: [
          Image.asset("${data.imageUrl}",  height: 130,fit: BoxFit.contain,  ),
          Text("${data.title}",style: robotoMedium.copyWith(fontSize: 14,color: Colors.white),)
        ],
      )
      ,
    );;
  }
}
