import 'package:flutter/material.dart';
import 'package:job_finder/functions/search_functions.dart';
import 'package:job_finder/resources/app_color.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  static const String id="Search";

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var maxsize = double.infinity;
    return Scaffold(
      backgroundColor: AppColor().backgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children:  [
              //gradients
              const Image(
                image: AssetImage("assets/images/Rectangle.png",),
                fit: BoxFit.contain,
              ),
              const Align(
                alignment: Alignment.topRight,
                child: Image(
                  image: AssetImage("assets/images/Vector.png",),
                  fit: BoxFit.contain,
                ),
              ),
              //body
              Container(
                padding: const EdgeInsets.only(left: 24.0,right: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //title :: Find your dream job
                    Container(
                      width: width*0.6,
                      margin: const EdgeInsets.only(top: 56),
                      child: Text("Find your dream job",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        color: AppColor().cardPrimaryColor,
                        fontFamily: "Raleway-Bold"
                      ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    // gap
                    const SizedBox(height: 20,),
                    // searching :: Textfield
                    Container(
                      height: 48,
                      width: maxsize,
                      padding: const EdgeInsets.only(left: 19),
                      decoration: BoxDecoration(
                        color: AppColor().cardPrimaryColor,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(width: 0.5,
                        color: const Color.fromRGBO(240, 240, 240,1,),
                          style: BorderStyle.solid
                        ),
                        boxShadow:const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.08),
                            spreadRadius:0.5,
                            blurRadius: 0.1,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(0,4),
                          ),
                        ]
                      ),
                      child: TextField(
                        controller: _searchController,
                        decoration:  InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          suffixIcon: const Icon(Icons.close,color: Colors.grey,size: 18,),
                          hintText: "UX/UI Designer",
                          hintStyle: TextStyle(
                            color: AppColor().textColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Raleway-Bold",
                          ),
                        ),
                      ),
                    ),
                    // gap
                    const SizedBox(
                      height: 30,
                    ),
                    //text :: find for you
                    Text("Hey! See what we find for you ^^",
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColor().textColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Raleway-Bold"
                      ),
                      softWrap: false,
                    ),
                    //gap
                    const SizedBox(height: 15.0,),
                    //reference
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          reference("assets/images/figma_logo1.png","Figma.Co","Marketing",32),
                          reference("assets/images/spotify-logo1.png","Spotify","Technical",32),
                          reference("assets/images/sketch_logo1.png","Sketch B.V","Marketing",32),
                          reference("assets/images/Slack_Logo1.png","Slack Technologies","Sales",32),
                          reference("assets/images/trello_logo1.png","Trello","Technical",32),
                        ],
                      ),
                    ),
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
