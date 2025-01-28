


import 'package:assignment_1/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../util/styles.dart';


class BottomNavItem extends StatelessWidget {
  // final IconData iconData;
  final String? iconData;

  final Function()? onTap;
  final bool isSelected;
  final double height;
  BottomNavItem({ this.iconData, this.onTap, this.isSelected = false,this.height=20,  });

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Image.asset(iconData!, height: height,color: isSelected?cateItemActiveColor:navIconColor,),//

            onPressed: onTap,
          )

        ],
      ),
    );
  }
}
//0xFFDCDCDC