import 'package:flutter/material.dart';
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [brandWhite,brandBeigeLight,brandBeigeLight], begin: Alignment.topLeft, end: Alignment.centerRight)
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding, bottom: defaultPadding * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset("assets/images/avatar.png", width: 40, height: 40,
                        )
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding,bottom: defaultPadding),
                child: Text("Hi, Marina",style: TextStyle(color: brandBeige, fontSize: 24, fontWeight: FontWeight.normal)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: Text("let's select your\nperfect place",style: TextStyle(color: brandBlack, fontSize: 32, fontWeight: FontWeight.normal)),
              ),
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
                            Text("1 034", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: brandWhite300),),
                            Text("offers", style: TextStyle(fontSize: 14, color: brandWhite300, fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
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
                              Text("2 212", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: brandBeige),),
                              Text("offers", style: TextStyle(fontSize: 14, color: brandBeige, fontWeight: FontWeight.w500),),
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
              


            ],
          ),
        ),
      ),


      // body:  DraggableScrollableSheet(
      //     initialChildSize: 0.3,
      //     builder: (BuildContext context, ScrollController scrollController){
      //       return ColoredBox(
      //           color: Colors.white,
      //           child: Column(
      //             children: [
      //               Container(
      //                 decoration: BoxDecoration(
      //                     gradient: LinearGradient(colors: [brandWhite,brandBeigeLight,brandBeigeLight], begin: Alignment.topLeft, end: Alignment.centerRight)
      //                 ),
      //                 child: SafeArea(
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(left: defaultPadding, bottom: defaultPadding * 2),
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                           children: [
      //                             Container(
      //                               width: 140,
      //                               height: 35,
      //                               decoration: BoxDecoration(
      //                                   color: brandWhite200,
      //                                   borderRadius: BorderRadius.circular(5.0)
      //                               ),
      //                               child: Center(
      //                                 child: Row(
      //                                   children: [
      //                                     SvgPicture.asset("assets/images/icons/map-pin-fill.svg", width: 18, height: 18, color: brandBeige,),
      //                                     Padding(
      //                                       padding: const EdgeInsets.only(left: defaultPadding / 4),
      //                                       child: Text("Saint Petersburg", style: TextStyle(color: brandBeige, fontWeight: FontWeight.normal),),
      //                                     )
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                             Padding(
      //                               padding: const EdgeInsets.only(right: defaultPadding),
      //                               child: ClipRRect(
      //                                   borderRadius: BorderRadius.circular(20.0),
      //                                   child: Image.asset("assets/images/avatar.png", width: 40, height: 40,
      //                                   )
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(left: defaultPadding,bottom: defaultPadding),
      //                         child: Text("Hi, Marina",style: TextStyle(color: brandBeige, fontSize: 24, fontWeight: FontWeight.normal)),
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.only(left: defaultPadding),
      //                         child: Text("let's select your\nperfect place",style: TextStyle(color: brandBlack, fontSize: 32, fontWeight: FontWeight.normal)),
      //                       ),
      //                       SizedBox(
      //                         height: defaultPadding,
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                           children: [
      //                             Container(
      //                               width: 150.0,
      //                               height: 150.0,
      //                               decoration: BoxDecoration(
      //                                   borderRadius: BorderRadius.circular(100),
      //                                   color: brandOrangeLight
      //                               ),
      //                               child: Padding(
      //                                 padding: const EdgeInsets.all(defaultPadding),
      //                                 child: Column(
      //                                   children: [
      //                                     Text("BUY", style: TextStyle(
      //                                         fontSize: 14,
      //                                         color: brandWhite300,
      //                                         fontWeight: FontWeight.w500
      //                                     ),),
      //                                     const SizedBox(height: 16),
      //                                     Text("1 034", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: brandWhite300),),
      //                                     Text("offers", style: TextStyle(fontSize: 14, color: brandWhite300, fontWeight: FontWeight.w500),),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                             Container(
      //                                 width: 150.0,
      //                                 height: 150.0,
      //                                 decoration: BoxDecoration(
      //                                     borderRadius: BorderRadius.circular(20),
      //                                     color: brandWhite300
      //                                 ),
      //                                 child: Padding(
      //                                   padding: const EdgeInsets.all(defaultPadding),
      //                                   child: Column(
      //                                     children: [
      //                                       Text("RENT", style: TextStyle(
      //                                           fontSize: 14,
      //                                           color: brandBeige,
      //                                           fontWeight: FontWeight.w500
      //                                       ),),
      //                                       const SizedBox(height: 16),
      //                                       Text("2 212", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: brandBeige),),
      //                                       Text("offers", style: TextStyle(fontSize: 14, color: brandBeige, fontWeight: FontWeight.w500),),
      //                                     ],
      //                                   ),
      //                                 )
      //                             )
      //                           ],
      //                         ),
      //                       ),
      //                       DraggableScrollableSheet(
      //                           initialChildSize: 0.3,
      //                           builder: (BuildContext context, ScrollController scrollController){
      //                             return ColoredBox(
      //                                 color: Colors.white,
      //                                 child: Column(
      //                                   children: [
      //                                     Flexible(
      //                                         child: ListView(
      //                                           // crossAxisAlignment: CrossAxisAlignment.stretch,
      //                                           // mainAxisSize: MainAxisSize.max,
      //                                           children: [
      //                                             SizedBox(
      //                                               width: double.infinity,
      //                                               height: 150.0,
      //                                               child: Center(
      //                                                 child: Stack(
      //                                                   children: [
      //                                                     ClipRRect(
      //                                                         borderRadius: BorderRadius.circular(20.0),
      //                                                         child: Image.asset(
      //                                                           "assets/images/list/list_img_1.png",
      //                                                           width: double.infinity,
      //                                                           height: 150,
      //                                                           fit: BoxFit.cover,)),
      //
      //
      //                                                   ],
      //                                                 ),
      //                                               ),
      //
      //                                             ),
      //                                             Padding(
      //                                               padding: const EdgeInsets.symmetric(
      //                                                   vertical: defaultPadding / 2),
      //                                               child: Row(
      //                                                 children: [
      //                                                   SizedBox(
      //                                                     width: 150.0,
      //                                                     height: 150.0,
      //                                                     child: Center(
      //                                                       child: Stack(
      //                                                         children: [
      //                                                           ClipRRect(
      //                                                               borderRadius: BorderRadius.circular(20.0),
      //                                                               child: Image.asset(
      //                                                                 "assets/images/list/list_img_2.png",
      //                                                                 width: double.infinity,
      //                                                                 height: 150,
      //                                                                 fit: BoxFit.cover,)),
      //
      //
      //                                                         ],
      //                                                       ),
      //                                                     ),
      //
      //                                                   ),
      //                                                   SizedBox(
      //                                                     width: 150.0,
      //                                                     height: 150.0,
      //                                                     child: Center(
      //                                                       child: Stack(
      //                                                         children: [
      //                                                           ClipRRect(
      //                                                               borderRadius: BorderRadius.circular(20.0),
      //                                                               child: Image.asset(
      //                                                                 "assets/images/list/list_img_3.png",
      //                                                                 width: double.infinity,
      //                                                                 height: 150,
      //                                                                 fit: BoxFit.cover,)),
      //
      //
      //                                                         ],
      //                                                       ),
      //                                                     ),
      //
      //                                                   )
      //
      //                                                 ],
      //                                               ),
      //                                             )
      //                                           ],
      //                                         )),
      //                                   ],
      //                                 )
      //                             );
      //                           }
      //                       )
      //
      //
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               Flexible(
      //                   child: ListView(
      //                     // crossAxisAlignment: CrossAxisAlignment.stretch,
      //                     // mainAxisSize: MainAxisSize.max,
      //                     children: [
      //                       SizedBox(
      //                         width: double.infinity,
      //                         height: 150.0,
      //                         child: Center(
      //                           child: Stack(
      //                             children: [
      //                               ClipRRect(
      //                                   borderRadius: BorderRadius.circular(20.0),
      //                                   child: Image.asset(
      //                                     "assets/images/list/list_img_1.png",
      //                                     width: double.infinity,
      //                                     height: 150,
      //                                     fit: BoxFit.cover,)),
      //
      //
      //                             ],
      //                           ),
      //                         ),
      //
      //                       ),
      //                       Padding(
      //                         padding: const EdgeInsets.symmetric(
      //                             vertical: defaultPadding / 2),
      //                         child: Row(
      //                           children: [
      //                             SizedBox(
      //                               width: 150.0,
      //                               height: 150.0,
      //                               child: Center(
      //                                 child: Stack(
      //                                   children: [
      //                                     ClipRRect(
      //                                         borderRadius: BorderRadius.circular(20.0),
      //                                         child: Image.asset(
      //                                           "assets/images/list/list_img_2.png",
      //                                           width: double.infinity,
      //                                           height: 150,
      //                                           fit: BoxFit.cover,)),
      //
      //
      //                                   ],
      //                                 ),
      //                               ),
      //
      //                             ),
      //                             SizedBox(
      //                               width: 150.0,
      //                               height: 150.0,
      //                               child: Center(
      //                                 child: Stack(
      //                                   children: [
      //                                     ClipRRect(
      //                                         borderRadius: BorderRadius.circular(20.0),
      //                                         child: Image.asset(
      //                                           "assets/images/list/list_img_3.png",
      //                                           width: double.infinity,
      //                                           height: 150,
      //                                           fit: BoxFit.cover,)),
      //
      //
      //                                   ],
      //                                 ),
      //                               ),
      //
      //                             )
      //
      //                           ],
      //                         ),
      //                       )
      //                     ],
      //                   )),
      //             ],
      //           )
      //       );
      //     }
      // ),
      // bottomSheet:  Container(
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(30.0),
      //           topRight: Radius.circular(30.0)
      //       ),
      //       color: Colors.white
      //   ),
      //   height: 220,
      //   width: double.infinity,
      //   child: Padding(
      //     padding: EdgeInsets.all(10.0),
      //     child: ListView(
      //       // crossAxisAlignment: CrossAxisAlignment.stretch,
      //       // mainAxisSize: MainAxisSize.max,
      //       children: [
      //         SizedBox(
      //           width: double.infinity,
      //           height: 150.0,
      //           child: Center(
      //             child: Stack(
      //               children: [
      //                 ClipRRect(
      //                     borderRadius: BorderRadius.circular(20.0),
      //                     child: Image.asset(
      //                       "assets/images/list/list_img_1.png",
      //                       width: double.infinity,
      //                       height: 150,
      //                       fit: BoxFit.cover,)),
      //
      //
      //               ],
      //             ),
      //           ),
      //
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(
      //               vertical: defaultPadding / 2),
      //           child: Row(
      //             children: [
      //               SizedBox(
      //                 width: 150.0,
      //                 height: 150.0,
      //                 child: Center(
      //                   child: Stack(
      //                     children: [
      //                       ClipRRect(
      //                           borderRadius: BorderRadius.circular(20.0),
      //                           child: Image.asset(
      //                             "assets/images/list/list_img_2.png",
      //                             width: double.infinity,
      //                             height: 150,
      //                             fit: BoxFit.cover,)),
      //
      //
      //                     ],
      //                   ),
      //                 ),
      //
      //               ),
      //               SizedBox(
      //                 width: 150.0,
      //                 height: 150.0,
      //                 child: Center(
      //                   child: Stack(
      //                     children: [
      //                       ClipRRect(
      //                           borderRadius: BorderRadius.circular(20.0),
      //                           child: Image.asset(
      //                             "assets/images/list/list_img_3.png",
      //                             width: double.infinity,
      //                             height: 150,
      //                             fit: BoxFit.cover,)),
      //
      //
      //                     ],
      //                   ),
      //                 ),
      //
      //               )
      //
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      //
      //
      // )
    );
  }
}
