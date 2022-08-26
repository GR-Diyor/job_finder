import 'package:flutter/material.dart';
import 'package:job_finder/pages/job_detail.dart';
import 'package:job_finder/resources/app_color.dart';

Widget job_search(BuildContext context,String skill,String profession,int result) {
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, Job_detail.id);
    },
    child: Container(
      height: 196.0,
      width: 132.0,
      padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 21.0),
      margin: const EdgeInsets.only(right: 13.0),
      decoration: BoxDecoration(
        color: AppColor().cardPrimaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // text :: skill
          Text(skill,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,fontFamily: "Raleway-Regular",
            color: AppColor().textColor,
          ),),
          const SizedBox(height: 13,),
          // text :: profession
          Container(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 4.0,bottom: 4.0),
            decoration: BoxDecoration(
              color: AppColor().primaryColor,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Text(
              profession,
              style: TextStyle(
                color: AppColor().cardPrimaryColor,
                fontSize: 13.0,
                fontFamily: "Raleway-VariableFont_wght",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // gap
          const SizedBox(height: 48,),
          // text :: result
          Text("$result result",style:const TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
            fontFamily: "Raleway-Regular",
            color: Color.fromRGBO(59, 59, 59, 0.52),
          ),),
        ],
      ),
    ),
  );
}