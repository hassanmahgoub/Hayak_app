// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ContactUs.dart';
import '../HomePage.dart';
import '../Invesment.dart';
import '../Profile.dart';
import '../Wallet.dart';

class MyBar extends StatefulWidget {
  const MyBar({Key? key}) : super(key: key);

  @override
  _MyBarState createState() => _MyBarState();
}

class _MyBarState extends State<MyBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: 4,
          height: 80,
          backgroundColor: const Color(0xff05357D),
          items: <BottomNavigationBarItem>[
            //active color use on first
    
            const BottomNavigationBarItem(
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Color(0xff3D9FD7),
                    ),
                    Text(
                      'حسابي',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ),
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Text(
                      'حسابي',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                )),
            const BottomNavigationBarItem(
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.date_range_rounded,
                      color: Color(0xff3D9FD7),
                    ),
                    Text(
                      'محادثة',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ),
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.date_range_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      'محادثة',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                )),
            const BottomNavigationBarItem(
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code,
                      color: Color(0xff3D9FD7),
                    ),
                    Text(
                      'المحفظة',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ),
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code,color:Colors.white),
                    Text(
                      'المحفظة',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                )),
            const BottomNavigationBarItem(
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Color(0xff3D9FD7),
                    ),
                    Text(
                      'اشعارات',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ),
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications,color: Colors.white,),
                    Text(
                      'اشعارات',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                )),
            const BottomNavigationBarItem(
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Color(0xff3D9FD7),
                    ),
                    Text(
                      'الرئيسية',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ),
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home,color: Colors.white,),
                    Text(
                      'الرئيسية',
                      style: TextStyle(
                          fontFamily: 'sst arabic',
                          fontSize: 12,
                          color: Colors.white),
                    )
                  ],
                ))
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: Profile(),
                );
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: ContactUs(),
                );
              });
            case 2:
              return CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: Wallet(),
                );
              });
            case 3:
              return CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: Invesment(),
                );
              });
            case 4:
              return CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: HomePage(),
                );
              });
            default:
              CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: HomePage(),
                );
              });
          }
          return Container();
        });
  }
}
