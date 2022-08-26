
import 'package:flutter/material.dart';
import 'package:job_finder/resources/app_color.dart';

Widget reference(String image, String title, String profession,int cost) {
   return Container(
     height: 88,
     padding: const EdgeInsets.only(left: 19.0,right: 19.0,bottom: 18.0,top:19.0),
     margin: const EdgeInsets.only(bottom: 14.0),
     alignment: Alignment.center,
     decoration: BoxDecoration(
       color: AppColor().cardPrimaryColor,
       borderRadius: BorderRadius.circular(16),
     ),
     child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Image(
           image: AssetImage(image),
         ),
         const SizedBox(width: 23,),
         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Text(title,
               style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.w700,
                 fontFamily: "Raleway-Bold",
                 color: AppColor().textColor,
                 overflow: TextOverflow.clip,
               ),
                 softWrap: false,
               ),
               const SizedBox(height: 5,),
               Container(
                 padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 3.0,bottom: 3.0),
                 decoration: BoxDecoration(
                   color: AppColor().primaryColor,
                   borderRadius: BorderRadius.circular(6.0),
                 ),
                 child: Text(
                   profession,
                   style: TextStyle(
                     color: AppColor().cardPrimaryColor,
                     fontSize: 12.0,
                     fontFamily: "Raleway-VariableFont_wght",
                     fontWeight: FontWeight.w500,
                   ),
                   softWrap: false,
                 ),
               ),
             ],
           ),
         ),
         Align(
             alignment: Alignment.bottomRight,
             child: Text("\$$cost/h",
             style: const TextStyle(
               color: Color.fromRGBO(59, 59, 59, 0.45),
               fontSize: 13,
               fontWeight: FontWeight.w500,
               fontFamily: "Raleway-Regular"
             ),
               softWrap: false,
             ),

         ),
       ],
     ),
   );
}
