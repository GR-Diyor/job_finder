import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/functions/home_functions.dart';
import 'package:job_finder/pages/search.dart';
import 'package:job_finder/resources/app_color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String id = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor().backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [
                Container(
                  width: width,
                  height: height,
                  padding: const EdgeInsets.only(top: 23.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Align(
                        alignment: Alignment.topRight,
                        child: Image(
                          image: AssetImage("assets/images/character.png"),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 98,
                        decoration: BoxDecoration(
                            color: AppColor().primaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.elliptical(150, 35),
                              topRight: Radius.elliptical(150, 35),
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height,
                  width: width,
                  padding: const EdgeInsets.only(left: 24, top: 56),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title :: Good Jobs
                      const Text(
                        "Good Jobs",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Raleway-Bold"),
                        softWrap: false,
                      ),
                      //gap
                      const SizedBox(
                        height: 11,
                      ),
                      // title :: Have a nice day
                      Text(
                        "Have a nice day",
                        style: TextStyle(
                            color: AppColor().textColor,
                            fontSize: 17,
                            fontStyle: FontStyle.normal,
                            fontFamily: "Raleway-VariableFont_wght"),
                        softWrap: false,
                      ),
                      // Seaching :: TextField
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 45, right: 24),
                        padding: const EdgeInsets.only(left: 19),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(
                            color: const Color.fromRGBO(240, 240, 240, 1),
                            width: 0.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: TextField(
                          controller: _searchController,
                          onTap: (){
                            FocusScope.of(context).unfocus();
                            Navigator.pushNamed(context, Search.id);
                          },
                          // read only
                          readOnly: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Find your dream is come true",
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(59, 59, 59, 0.23),
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Raleway-VariableFont_wght"),
                          ),
                        ),
                      ),
                      //gap
                      const SizedBox(
                        height: 39,
                      ),
                      // text :: Hey! What your just find
                      const Text(
                        "Hey! What you just find...",
                        style: TextStyle(
                            color: Color.fromRGBO(59, 59, 59, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Raleway-VariableFont_wght"),
                        softWrap: false,
                      ),
                      //gap
                      const SizedBox(
                        height: 16.0,
                      ),
                      //list of job search
                      SizedBox(
                        height: 196.0,
                        width: width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            job_search(context,"UX/UI Designer", "Design", 213),
                            job_search(context,"Software Engineer", "Engineering", 123),
                            job_search(context,"Telephone Sale", "Finance", 421),
                          ],
                        ),
                      ),
                      //gap
                      const SizedBox(
                        height: 45,
                      ),
                      // text :: Suggest for you
                      Text(
                        "Suggest for you",
                        style: TextStyle(
                            color: AppColor().textColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Raleway-VariableFont_wght"),
                        softWrap: false,
                      ),
                      Stack(
                        children: [
                          Column(
                            children: [
                              //gap
                              const SizedBox(
                                height: 21,
                              ),
                              Container(
                                height: 144,
                                width: width,
                                margin: const EdgeInsets.only(right: 24.0),
                                padding: const EdgeInsets.only(top: 19.0,left: 16.0),
                                decoration: BoxDecoration(
                                  color: AppColor().cardPrimaryColor,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                          Text("More new jobs for you!",style: TextStyle(
                                          fontSize: 18.0,
                                            fontWeight: FontWeight.w800,
                                            fontFamily: "Raleway-Black",
                                            color: AppColor().textColor,
                                          ),
                                            softWrap: false,
                                          ),
                                          const SizedBox(height: 32,),
                                          const Text("View more!",style: TextStyle( fontSize: 13.0,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Raleway-Regular",
                                            color: Color.fromRGBO(59, 59, 59, 0.52),
                                          ),
                                            softWrap: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Expanded(child: SizedBox()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // image
                          const Align(
                            alignment: Alignment.topRight,
                            child: Image(
                              image: AssetImage("assets/images/OBJECTS.png"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildOriginDesign(),
    );
  }

  Widget _buildOriginDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Colors.white,
      strokeColor: Colors.white,
      unSelectedColor: Colors.white54,
      backgroundColor: AppColor().primaryColor,
      elevation: 0,
      blurEffect: false,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home_outlined),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.favorite_border),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.mail_outline),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.account_circle_outlined),
        ),
      ],
      currentIndex: index,
      onTap: (index) {
        setState(() {
          this.index = index;
        });
      },
    );
  }
}
