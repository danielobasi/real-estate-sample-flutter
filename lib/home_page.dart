import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moniepoint_realestate/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [brandWhite,brandBeigeLight,brandBeigeLight], begin: Alignment.topLeft, end: Alignment.centerRight)
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: defaultPadding, bottom: defaultPadding * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Animate(
                          effects: [ScaleEffect(duration: 600.ms)],
                          child: Container(
                            width: 140,
                            height: 35,
                            decoration: BoxDecoration(
                                color: brandWhite200,
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  SvgPicture.asset("assets/images/icons/map-pin-fill.svg", width: 18, height: 18, color: brandBeige,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: defaultPadding / 4),
                                    child: Text("Saint Petersburg", style: TextStyle(color: brandBeige, fontWeight: FontWeight.normal),),
                                  )
                                ],
                              ),
                            ),
                          )
                        ),

                        Animate(
                          effects: [ScaleEffect(delay: 200.ms,duration: 900.ms)],
                          child: Padding(
                            padding: const EdgeInsets.only(right: defaultPadding),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset("assets/images/avatar.png", width: 40, height: 40,
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Animate(
                    effects: [FadeEffect(delay: 400.ms,duration: 200.ms)],
                    child: Padding(
                      padding: const EdgeInsets.only(left: defaultPadding,bottom: defaultPadding),
                      child: Text("Hi, Marina",style: TextStyle(color: brandBeige, fontSize: 24, fontWeight: FontWeight.normal)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Text("let's select your\nperfect place",style: TextStyle(color: brandBlack, fontSize: 32, fontWeight: FontWeight.normal)),
                  ).animate().fadeIn(delay: 900.ms),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: brandOrangeLight
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Column(
                              children: [
                                Text("BUY", style: TextStyle(
                                    fontSize: 14,
                                    color: brandWhite300,
                                    fontWeight: FontWeight.w500
                                ),),
                                const SizedBox(height: 16),
                                Countup(
                                  begin: 0,
                                  end: 1034,
                                  duration: Duration(seconds: 3),
                                  separator: ' ',
                                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: brandWhite300),
                                ),
                                Text("offers", style: TextStyle(fontSize: 14, color: brandWhite300, fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ).animate().scale(delay: 900.ms,duration: 900.ms),
                        Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: brandWhite300
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Column(
                                children: [
                                  Text("RENT", style: TextStyle(
                                      fontSize: 14,
                                      color: brandBeige,
                                      fontWeight: FontWeight.w500
                                  ),),
                                  const SizedBox(height: 16),
                                  Countup(
                                    begin: 0,
                                    end: 2212,
                                    duration: Duration(seconds: 3),
                                    separator: ' ',
                                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: brandBeige),
                                  ),
                                  Text("offers", style: TextStyle(fontSize: 14, color: brandBeige, fontWeight: FontWeight.w500),),
                                ],
                              ),
                            )
                        ).animate().scale(delay: 900.ms,duration: 900.ms)
                      ],
                    ),
                  ),



                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: DraggableScrollableSheet(
                    initialChildSize: 0.4,
                    maxChildSize: 1,
                    minChildSize: 0.35,
                    builder: (BuildContext context, ScrollController scrollController){
                      return Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0)
                              ),
                              color: Colors.white
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              controller: scrollController,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 150.0,
                                  child: Center(
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.circular(20.0),
                                            child: Image.asset(
                                              "assets/images/list/list_img_1.png",
                                              width: double.infinity,
                                              height: 150,
                                              fit: BoxFit.cover,)
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2, horizontal: defaultPadding),
                                            child: Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20.0),
                                                color: brandWhite300
                                            ),
                                              child: Center(
                                                child:SvgPicture.asset("assets/images/icons/caret-right.svg", width: 8, height: 8,)
                                              ),
                                            ),
                                          )
                                        ).animate().moveX(delay: 100.ms, curve: Curves.linearToEaseOut).swap(builder: (_,child) => Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: const EdgeInsets.all(defaultPadding / 2),
                                            child: Container(
                                              width: 300,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  color: brandBeigeLight.withOpacity(0.8)
                                            ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  const SizedBox(),
                                                  Text("Gladkova St., 25", style: TextStyle(fontWeight: FontWeight.w600),),
                                                  Container(
                                                    width: 35,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20.0),
                                                        color: brandWhite300
                                                    ),
                                                    child: Center(
                                                        child:SvgPicture.asset("assets/images/icons/caret-right.svg", width: 8, height: 8,)
                                                    ),
                                                  )


                                                ],
                                              ),
                                            ),
                                          )
                                        ).animate().fadeIn()
                                        )


                                      ],
                                    ),
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: defaultPadding / 2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 160.0,
                                        height: 300.0,
                                        child: Center(
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  child: Image.asset(
                                                    "assets/images/list/list_img_2.png",
                                                    width: double.infinity,
                                                    height: 300,
                                                    fit: BoxFit.cover,)
                                              ),
                                              Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(defaultPadding / 2),
                                                    child: Container(
                                                      width: 130,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(20.0),
                                                          color: brandBeigeLight.withOpacity(0.8)
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          const SizedBox(),
                                                          Text("Gubina St.,11", style: TextStyle(fontWeight: FontWeight.w600),),
                                                          Container(
                                                            width: 35,
                                                            height: 35,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20.0),
                                                                color: brandWhite200
                                                            ),
                                                            child: Center(
                                                                child:SvgPicture.asset("assets/images/icons/caret-right.svg", width: 8, height: 8,)
                                                            ),
                                                          )


                                                        ],
                                                      ),
                                                    ),
                                                  )
                                              )


                                            ],
                                          ),
                                        ),

                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            width: 160.0,
                                            height: 150.0,
                                            child: Center(
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                      child: Image.asset(
                                                        "assets/images/list/list_img_3.png",
                                                        width: double.infinity,
                                                        height: 150,
                                                        fit: BoxFit.cover,)
                                                  ),
                                                  Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(defaultPadding / 2),
                                                        child: Container(
                                                          width: 145,
                                                          height: 40,
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(20.0),
                                                              color: brandBeigeLight.withOpacity(0.8)
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              const SizedBox(),
                                                              Text("Trefoleva St.,43", style: TextStyle(fontWeight: FontWeight.w600),),
                                                              Container(
                                                                width: 35,
                                                                height: 35,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                    color: brandWhite200
                                                                ),
                                                                child: Center(
                                                                    child:SvgPicture.asset("assets/images/icons/caret-right.svg", width: 8, height: 8,)
                                                                ),
                                                              )


                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                  )


                                                ],
                                              ),
                                            ),

                                          ),
                                          const SizedBox(height: defaultPadding ),
                                          SizedBox(
                                            width: 160.0,
                                            height: 160.0,
                                            child: Center(
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                      child: Image.asset(
                                                        "assets/images/list/list_img_4.png",
                                                        width: double.infinity,
                                                        height: 150,
                                                        fit: BoxFit.cover,)
                                                  ),
                                                  Align(
                                                      alignment: Alignment.bottomCenter,
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(defaultPadding / 2),
                                                        child: Container(
                                                          width: 130,
                                                          height: 35,
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(20.0),
                                                              color: brandBeigeLight.withOpacity(0.6)
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              const SizedBox(),
                                                              Text("Sedova St.,22", style: TextStyle(fontWeight: FontWeight.w600),),
                                                              Container(
                                                                width: 35,
                                                                height: 35,
                                                                decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                    color: brandWhite200
                                                                ),
                                                                child: Center(
                                                                    child:SvgPicture.asset("assets/images/icons/caret-right.svg", width: 8, height: 8,)
                                                                ),
                                                              )


                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                  )


                                                ],
                                              ),
                                            ),

                                          ),
                                        ],
                                      )

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),


                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),


    );
  }
}
