import 'package:finalnotes/uitilte/colors.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:flutter/material.dart';

class containerProfile extends StatelessWidget {
 String title;
 String subTitle;


 containerProfile(this.title, this.subTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-1),
            color: BUTTON_COLOR,
            blurRadius: 1,
            spreadRadius: 0
          ),BoxShadow(
              offset: Offset(-1,0),
              color: BUTTON_COLOR,
              blurRadius: 1,
              spreadRadius: 0
          ),BoxShadow(
              offset: Offset(1,0),
              color: BUTTON_COLOR,
              blurRadius: 2,
              spreadRadius: 0
          ),BoxShadow(
              offset: Offset(0,1),
              color: BUTTON_COLOR,
              blurRadius: 2,
              spreadRadius: 0
          )
        ]
      ),
      child: Column(
        children: [
          SizedBox(height: 13,),
          TextCustom(
            title,//'Categories'
            'rob',
            FontWeight.w700,
            12,
            BUTTON_COLOR,
            TextAlign.center,
          ),
          SizedBox(height: 7,),
          TextCustom(
            subTitle,
            'rob',
            FontWeight.w700,
            12,
            SUB_TEXT_LIST_CATEGORIES,
            TextAlign.center,
          ),
        ],
      ),
    );
  }
}
