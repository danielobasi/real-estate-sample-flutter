import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_realestate/constants.dart';
import 'package:moniepoint_realestate/favourites_page.dart';
import 'package:moniepoint_realestate/messages_page.dart';
import 'package:moniepoint_realestate/profile_page.dart';
import 'package:moniepoint_realestate/search_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const RealEstateMainNavigationBar(),
    );
  }
}

class RealEstateMainNavigationBar extends StatelessWidget {
  const RealEstateMainNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomNavigationBarExample());
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    SearchPage(),
    MesssagesPage(),
    HomePage(),
    FavouritesPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('BottomNavigationBar Sample')),
      extendBody: true,

      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 15),
        child: SizedBox(
          height: 66,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BottomNavigationBar(
              backgroundColor: brandBlack,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Container(
                        width: 35,
                        height: 35,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.black
                        ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/images/icons/magnifying-glass-fill.svg",
                        width: 24,
                        height: 24,
                        fit: BoxFit.contain
                      ),
                    )
                    ),
                    activeIcon:  Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.orange
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                              "assets/images/icons/magnifying-glass-fill.svg",
                              width: 24,
                              height: 24,
                              fit: BoxFit.contain
                          ),
                        )
                    ) ,
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                        width: 35,
                        height: 35,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.black
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/images/icons/chat-centered-dots-fill.svg",width: 24,height: 24, fit: BoxFit.contain,),
                        )),
                    activeIcon: Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/images/icons/chat-centered-dots-fill.svg",width: 24,height: 24, fit: BoxFit.contain,),
                        )) ,
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                        width: 35,
                        height: 35,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.black
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/images/icons/house-simple-fill.svg",width: 24, height: 24,),
                        )),
                    activeIcon: Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/images/icons/house-simple-fill.svg",width: 24, height: 24,),
                        )),
                    label: ''),
                BottomNavigationBarItem(icon: Container(
                    width: 35,
                    height: 35,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40), color: Colors.black
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/images/icons/heart-fill.svg",width: 24, height: 24,),
                    )),
                    activeIcon:  Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/images/icons/heart-fill.svg",width: 24, height: 24,),
                        )),
                    label: ''),
                BottomNavigationBarItem(icon: Container(
                    width: 35,
                    height: 35,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40), color: Colors.black
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/images/icons/user-fill.svg", width: 24, height: 24,),
                    )),
                    activeIcon: Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40), color: Colors.orange
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset("assets/images/icons/user-fill.svg", width: 24, height: 24,),
                        )),
                    label: ''),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}




