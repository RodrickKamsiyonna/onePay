import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:genesis_flutter/Abuja_Electricity.dart';
import 'package:genesis_flutter/Article.dart';
import 'package:genesis_flutter/BIllPage.dart';
import 'package:genesis_flutter/Betting.dart';
import 'wallet.dart';
import 'Quick_Actions.dart';
import 'ContactInfo.dart';
import 'ContactUs.dart';
import 'TelevisionPage.dart';
import 'AccountPage.dart';
import 'Sercurity.dart';
import 'ConfirmPin.dart';
import 'Betting.dart';
import 'Bills.dart';
import 'RecentTransaction.dart';
import 'package:genesis_flutter/Profile.dart';
import 'Electricity.dart';
import 'package:provider/provider.dart';
import 'Internet.dart';
import 'WelcomePin.dart';
import 'package:iconsax/iconsax.dart';
import 'Services.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.white
    ),
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}
class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home>{
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Services(),
    BettingOnePage(),
    InternetPage(),
    ProfilePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  // Bottom navigation  Bar Items
 static const List<BottomNavigationBarItem>  navBarItems = [
                       BottomNavigationBarItem(
                       icon: Icon(Iconsax.home),
                       label: 'Home'),

                       BottomNavigationBarItem(
                       icon: Icon(Iconsax.settings),
                       label: 'Services'),


                      BottomNavigationBarItem(
                      icon: Icon(Iconsax.activity,),
                      label: 'Account'),

                       BottomNavigationBarItem(
                       icon: Icon(Iconsax.chart_1,),
                       label: 'Invest'),

                       BottomNavigationBarItem(
                       icon: Icon(Iconsax.profile_2user),
                       label: 'Profile'),
                       ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Color.fromARGB(255,253, 253,255),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white ,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
           showUnselectedLabels: true,
           selectedFontSize:14,
           unselectedFontSize: 12,
           iconSize: 20,
           elevation: 0,
           selectedLabelStyle: GoogleFonts.roboto(
             fontWeight: FontWeight.bold,
             color:Colors.blue
           ),
           selectedItemColor:Colors.blueAccent,
           unselectedItemColor: Colors.black,
           unselectedLabelStyle: GoogleFonts.roboto(
            color:Colors.black
           ),
          items: navBarItems,
        ),
        body: _pages[_currentIndex],
          ),
        );}
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<void> _rress()async {}
  @override
  Widget build(BuildContext context) {
    return  RefreshIndicator(
      onRefresh: () {
        return _rress();
      },
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
           Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 25,
                        child:Image.asset("asset/stylish-african-woman-posing-indoors.png",width:350,height:350,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:10),
                    child: Text(
                      "Hi, Korede Gold",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),),),
                  Padding(
                    padding: EdgeInsets.only(top:8),
                    child: Text(
                      "Welcome, Good evening",
                      style: TextStyle(
                          fontSize: 14
                      ),),)],),
            WalletCard(),
           QuickActionsRow(),
            RecentTs(), ]
      ),
    );
  }
}
