// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import 'MoreInformation.dart';

class EmailConfirm extends StatefulWidget {
  const EmailConfirm({super.key});

  @override
  State<EmailConfirm> createState() => _EmailConfirmState();
}

class _EmailConfirmState extends State<EmailConfirm> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: ScreenSize.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                gradient: RadialGradient(
                    radius: 0.4,
                    center: Alignment.center,
                    colors: [
                      Color(0xff3D9FD7),
                      Colors.white,
                    ])),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                    child: Text(
                  'تأكيد عنوان البريد الالكتروني',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sst arabic'),
                )),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                    child: Text(
                  'user@example.com لقد تم ارسال الرابط علي',
                  style: TextStyle(fontSize: 11, fontFamily: 'din'),
                )),
                const SizedBox(
                  height: 3,
                ),
                const Center(
                    child: Text(
                  'الرجاء النقر علي الرابط الموجود في صندوق الوارد الخاص بك للتحقق من حسابك',
                  style: TextStyle(fontSize: 11, fontFamily: 'din'),
                )),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MoreInformation()));
                  },
                  child: Container(
                    height: 45,
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                        color: const Color(0xff05357D),
                        borderRadius: BorderRadius.circular(9)),
                    child: const Center(
                        child: Text(
                      'إفتح البريد الالكتروني',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'rb'),
                    )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
