import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignment_1/util/styles.dart';

import '../../../model/dataModel.dart';


class ImageWithTitleContinueWatchItemCard extends StatelessWidget {
  const ImageWithTitleContinueWatchItemCard({super.key, required this.data, required this.width, required this.timeLinebarWidth});
  final DataClass data ;
  final double width;
  final double timeLinebarWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10) ,
      width: width,


      child: Column(
        children: [
          Expanded(
            child: Stack(

                children: [

                  Image.asset("${data.imageUrl}",  height: 130,fit: BoxFit.contain,  ),
                  Positioned(
                    bottom: 7,
                    left: 0,
                    child: Container(
                      width: timeLinebarWidth,
                      height: 6,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), )
                      ),
                    ),
                  ),
                ],

                 ),
          ),
          Text("${data.title}",style: robotoMedium.copyWith(fontSize: 14,color: Colors.white),)
        ],
      )
      ,
    );;
  }
}
