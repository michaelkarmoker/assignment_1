import 'package:assignment_1/util/colors.dart';
import 'package:assignment_1/util/styles.dart';
import 'package:assignment_1/view/home/widget/imageWithTitleContinueWathItemCard.dart';
import 'package:assignment_1/view/home/widget/titleWidget.dart';
import 'package:assignment_1/view/home/widget/imageWithTitleItemCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../model/dataModel.dart';

import 'widget/category_list.dart';
import '../base/custom_search_textfield.dart';


class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

  TextEditingController searchCtr=new TextEditingController();
  FocusNode searchFcs=new FocusNode();

  List<DataClass> trendingList=[
    new DataClass("Yes I do", "assets/image/tranding_1.png"),
    new DataClass("Soul Mate", "assets/image/tranding_2.png"),
    new DataClass("UB’s Secret", "assets/image/tranding_3.png"),
    new DataClass("Yes I do", "assets/image/tranding_4.png"),
    new DataClass("Inside Out 2", "assets/image/tranding_5.png"),

  ];
    List<DataClass> continueWatchingList=[
      new DataClass("Wednesday I Season - 1 | Episode - 3", "assets/image/continue_1.png"),
      new DataClass("Emily in Paris | Season - 1I Episode - 1", "assets/image/continue_2.png"),


    ];
    List<DataClass> recommendedList=[
      new DataClass("Double Love", "assets/image/recommend_1.png"),
      new DataClass("Curse Of The River", "assets/image/recommend_2.png"),
      new DataClass("Sunita", "assets/image/recommend_3.png"),
      new DataClass("Pikachu", "assets/image/recommend_4.png"),

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
       body: Container(

         child: Padding(
           padding: const EdgeInsets.only(top: 10.0,left: 8,right: 8, ),
           child: CustomScrollView(
             slivers: [
               SliverAppBar(
                 toolbarHeight: 140,
                 pinned: true,
                 stretch: true,
                 backgroundColor: bgColor,
                 title:Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Hello Michael",style: robotoMedium.copyWith(fontSize: 20,color: textColor),),
                             Text("Let's watch today",style: robotoRegular.copyWith(fontSize: 15,color: textColor),)
                           ],
                         ),
                         Container(
                             width: 50,
                             height: 50,
                             decoration: BoxDecoration(
                                 border: const GradientBoxBorder(

                                   gradient: LinearGradient(colors: [Color(0xffFF008B), Color(0xff00FFD3)]),

                                   width: 1.5,
                                 ),
                                 borderRadius: BorderRadius.circular(100)
                             ),
                             child:  ClipRRect(
                                 borderRadius: BorderRadius.circular(100),
                                 child: Image.asset("assets/image/profile_img.jpg",height: 80,))
                         ),

                       ],
                     ),
                     SizedBox(height: 20,),
                     Row(
                       children: [
                         Expanded(child: CustomSearchTextField(controller: searchCtr, focusNode: searchFcs,color: textColor,suffixIcon:Icons.search ,)),
                         Container(
                           margin: EdgeInsets.only(left: 10),
                           decoration: BoxDecoration(
                               color: cateItemActiveColor,
                               borderRadius: BorderRadius.circular(8)
                           ),
                           padding: EdgeInsets.all(10),
                           child: Image.asset("assets/icon/filter.png",height: 20,),
                         )

                       ],
                     ),
                   ],
                 ),
                 flexibleSpace: FlexibleSpaceBar(
                   background: Container(
                     color: bgColor
                   ),
                 ),



               ),

               SliverToBoxAdapter(
                 child:Column(
                   children: [
                     TitleWidget(title: 'Categories',moreBtnText: "See More",moreBtnFunction: (){}),
                     CategoryList(),
                     SizedBox(height: 20,),
                     Image.asset("assets/image/final.png"),
                     TitleWidget(title: 'Trending Movies',moreBtnText: "See More",moreBtnFunction: (){}),
                     Container(

                       height: 160,
                       width: double.infinity,
                       child: ListView.builder(
                           shrinkWrap: true,
                           scrollDirection: Axis.horizontal,
                           itemCount: trendingList.length,
                           itemBuilder: (context, index) {
                             return  ImageWithTitleItemCard(data: trendingList[index],width: MediaQuery.of(context).size.width/4,);

                           }
                       ),
                     ),


                     TitleWidget(title: 'Continue watching',moreBtnText: "See More",moreBtnFunction: (){}),
                     Container(

                       height: 170,

                       child: ListView.builder(
                           shrinkWrap: true,
                           scrollDirection: Axis.horizontal,
                           itemCount: continueWatchingList.length,
                           itemBuilder: (context, index) {
                             return  ImageWithTitleContinueWatchItemCard(data: continueWatchingList[index],
                               width: MediaQuery.of(context).size.width/2, timeLinebarWidth: index==0?150:60,);

                           }
                       ),
                     ),

                     TitleWidget(title: 'Recommended For You',moreBtnText: "See More",moreBtnFunction: (){}),
                     Container(

                       height: 170,
                       width: double.infinity,
                       child: ListView.builder(
                           shrinkWrap: true,
                           scrollDirection: Axis.horizontal,
                           itemCount: recommendedList.length,
                           itemBuilder: (context, index) {
                             return  ImageWithTitleItemCard(data: recommendedList[index],width: MediaQuery.of(context).size.width/3.5,);

                           }
                       ),
                     ),

                     SizedBox(height: 80,),
                   ],
                 ) ,
               )
             ],


           ),
         ),
       ),
    );
  }
}


