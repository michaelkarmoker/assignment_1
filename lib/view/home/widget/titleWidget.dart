import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../util/colors.dart';
import '../../../util/styles.dart';


class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title, required this.moreBtnText, required this.moreBtnFunction});
  final String title;
  final String moreBtnText;
  final Function() moreBtnFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,bottom: 10),
      child: Row(

        children: [
          Expanded(child: Text("${title}",style: akatabMedium.copyWith(fontSize: 18,color: textColor),)),
          InkWell(
       onTap: moreBtnFunction ,
              child: Text("${moreBtnText}",style: robotoMedium.copyWith(fontSize: 14,color: textColor),)),
        ],
      ),
    );
  }
}
