import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/resources/app_color.dart';

class Job_detail extends StatefulWidget {
  const Job_detail({Key? key}) : super(key: key);
  static const String id="Job_detail";

  @override
  State<Job_detail> createState() => _Job_detailState();
}

class _Job_detailState extends State<Job_detail> {
  int value=0;


  Widget buildSegment({required String text,required bool isActive,required bool color}) => Column(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width/3,
        height: 30,
        child: Center(
          child: Text(text,style:TextStyle(color: color?Colors.black:Colors.black12,fontSize: 11,
          fontFamily: "Raleway-Bold"),
          overflow: TextOverflow.visible,
          softWrap: false,
          ),
        ),
      ),
      isActive?Container(
        height: 3,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(164, 220, 198, 1),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(3),topRight: Radius.circular(3)),
        ),
      ):const SizedBox.shrink(),
    ],
  );

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor().backgroundColor,
      body: SafeArea(
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // header type
              Container(
                height: 366,
                width: width,
                padding: const EdgeInsets.only(left: 24,right: 24,top: 38),
                decoration:BoxDecoration(
                  color: AppColor().cardPrimaryColor,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(32),bottomRight: Radius.circular(32)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //title and figma logo
                    Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("UX/UI Designer",style: TextStyle(
                          color: AppColor().textColor,
                          fontSize: 23,
                          fontFamily: "Raleway-ExtraBold"
                        ),),
                        const Spacer(),
                        const Image(
                          image: AssetImage("assets/images/figma_logo1.png"),
                        ),
                      ],
                    ),
                    //gap
                    const SizedBox(height: 27,),
                    // date
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // text :: marketing
                            Container(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 3.0,bottom: 3.0),
                              decoration: BoxDecoration(
                                color: AppColor().primaryColor,
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Text(
                                "Marketing",
                                style: TextStyle(
                                  color: AppColor().cardPrimaryColor,
                                  fontSize: 12.0,
                                  fontFamily: "Raleway-VariableFont_wght",
                                  fontWeight: FontWeight.w500,
                                ),
                                softWrap: false,
                              ),
                            ),
                            //gap
                            const SizedBox(width: 10,),
                            // text of date
                            Text("20 March 2020",style: TextStyle(
                              color: AppColor().textColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Raleway-Regular"
                            ),)
                          ],
                        ),
                        const Icon(Icons.favorite_border,color: Color.fromRGBO(59, 59, 59, 0.5),),
                      ],
                    ),
                    // card
                    Stack(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top: 36),
                          padding: const EdgeInsets.only(top: 19,left: 24,bottom: 21),
                          width: width,
                          height: 138,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: const Color.fromRGBO(164, 220, 198, 0.14),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("\$32",style: TextStyle(
                                color: AppColor().textColor,
                                fontSize: 37,
                                  fontWeight: FontWeight.w600,
                                fontFamily:"Raleway-SemiBold",
                              ),),
                              const Text("Make new offer",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(59, 59, 59, 62),
                                fontFamily: "Raleway-SemiBold"
                              ),
                              ),


                            ],
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              //gap
                              SizedBox(
                                height: 14,
                              ),
                              Image(
                                image: AssetImage("assets/images/OBJECTS_man.png"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: CupertinoSegmentedControl(
                          groupValue:value,
                          selectedColor: Colors.white,
                          unselectedColor: Colors.white,
                          borderColor: Colors.white,
                          pressedColor: Colors.white,
                          children: {
                            0: buildSegment(text: "Job Deception",isActive:true,color: true),
                            1: buildSegment(text: "Benifit",isActive:false,color: false),
                            2: buildSegment(text:"Company info",isActive:false,color: false),
                          },
                          onValueChanged: (groupvalue) {
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //body
              Expanded(
                  child: Stack(
                    children:  [
                      SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.only(top: 30,bottom: 124),
                          padding: const EdgeInsets.only(
                            left: 26,
                            right:24,
                          ),
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                  "Dolor velit in duis pariatur ut nostrud exercitation ex voluptate Lorem officia nisi."
                                      " Sunt laborum in quis nostrud adipisicing mollit."
                                      " Dolore incididunt consequat dolore laboris id cillum."
                                      " Et anim do cupidatat esse duis. Aliquip nostrud labore pariatur qui."
                                      " Pariatur proident ex id ea laborum eu."
                                      " Aliquip aliquip mollit officia exercitation excepteur.\n\n\n",
                                  style: TextStyle(
                                    color: Color.fromRGBO(59, 59, 59, 0.62),
                                    fontSize: 14,
                                    fontFamily: "Raleway-Regular",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: "Dolor velit in duis pariatur ut nostrud exercitation ex voluptate Lorem officia nisi."
                                      " Sunt laborum in quis nostrud adipisicing mollit."
                                      " Dolore incididunt consequat dolore laboris id cillum."
                                      " Et anim do cupidatat esse duis. Aliquip nostrud labore pariatur qui."
                                      " Pariatur proident ex id ea laborum eu."
                                      " Aliquip aliquip mollit officia exercitation excepteur.",
                                  style: TextStyle(
                                    color: Color.fromRGBO(59, 59, 59, 0.62),
                                    fontSize: 14,
                                    fontFamily: "Raleway-Regular",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 98,
                          width: width,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 24,right: 24,top: 25,bottom: 25),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16),),
                            color: AppColor().cardPrimaryColor,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor().primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child:  Center(
                              child: Text("Apply",
                              style: TextStyle(
                                color: AppColor().textColor,
                                fontSize: 19,
                                fontFamily: "Raleway-ExtraBold"
                              ),),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
