// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'Wallet.dart';

class transactions extends StatefulWidget {
  const transactions({super.key});

  @override
  State<transactions> createState() => _transactionsState();
}

class _transactionsState extends State<transactions> {
  @override
  Widget build(BuildContext context) {
    final ScreenSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F9),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                  child: Text(
                'المعاملات',
                style: TextStyle(
                    fontFamily: 'rb', fontSize: 18, color: Color(0xff05357D)),
              )),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    width: ScreenSize.width,
                    decoration:
                        BoxDecoration(
                           color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wallet()));
                              }),
                              child:  const Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                              )
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '09/28/2022',
                                  style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 12,
                                      color: Color(0xff909194)),
                                ),
                                Row(
                                  children: [
                                    Text('ريال',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 11,
                                            color: Color(0xff3D9FD7))),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text('2,031',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 16,
                                            color: Color(0xff3D9FD7))),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'توزيع ارباح ايجار شهري',
                                  style: TextStyle(
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  'مؤكد',
                                  style: TextStyle(
                                    color: Color(0xff909194),
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff3D9FD7),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: const Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    ),
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                       color: Colors.white,
                        border: Border.all(color: Colors.transparent)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wallet()));
                              }),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                              )
                              
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '09/28/2022',
                                  style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 12,
                                      color: Color(0xff909194)),
                                ),
                                Row(
                                  children: [
                                    Text('ريال',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 11,
                                            color: Color(0xff3D9FD7))),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text('2,031',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 16,
                                            color: Color(0xff3D9FD7))),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'توزيع ارباح ايجار شهري',
                                  style: TextStyle(
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  'مؤكد',
                                  style: TextStyle(
                                    color: Color(0xff909194),
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff3D9FD7),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: const Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    ),
                  ),
                  Container(
                    height: 70,
                    decoration:
                        BoxDecoration(
                           color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wallet()));
                              }),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                              )
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '09/28/2022',
                                  style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 12,
                                      color: Color(0xff909194)),
                                ),
                                Row(
                                  children: [
                                    Text('ريال',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 11,
                                            color: Color(0xff3D9FD7))),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text('2,031',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 16,
                                            color: Color(0xff3D9FD7))),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'سحب من المحفظة',
                                  style: TextStyle(
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  'مؤكد',
                                  style: TextStyle(
                                    color: Color(0xff909194),
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff05357D),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: const Icon(
                                Icons.arrow_upward_outlined,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '09/28/2022',
                      style: TextStyle(
                          fontFamily: 'din',
                          fontSize: 12,
                          color: Color(0xff909194)),
                    )
                  ],
                ),
              ),
              
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    decoration:
                        BoxDecoration(
                           color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wallet()));
                              }),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                              )
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '09/28/2022',
                                  style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 12,
                                      color: Color(0xff909194)),
                                ),
                                Row(
                                  children: [
                                    Text('ريال',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 11,
                                            color: Color(0xff3D9FD7))),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text('2,031',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 16,
                                            color: Color(0xff3D9FD7))),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'توزيع ارباح ايجار شهري',
                                  style: TextStyle(
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  'مؤكد',
                                  style: TextStyle(
                                    color: Color(0xff909194),
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff3D9FD7),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: const Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    ),
                  ),
                  Container(
                    height: 60,
                    decoration: const BoxDecoration( color: Colors.white,
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap:(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wallet()));
                              }),
                                child: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 15,
                                ),
                                
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '09/28/2022',
                                    style: TextStyle(
                                        fontFamily: 'din',
                                        fontSize: 12,
                                        color: Color(0xff909194)),
                                  ),
                                  Row(
                                    children: [
                                      Text('ريال',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'rb',
                                              fontSize: 11,
                                              color: Color(0xff3D9FD7))),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text('2,031',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'rb',
                                              fontSize: 16,
                                              color: Color(0xff3D9FD7))),
                                    ],
                                  ),
                                ],
                              ),
                              Expanded(child: Container()),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'توزيع ارباح ايجار شهري',
                                    style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    'مؤكد',
                                    style: TextStyle(
                                      color: Color(0xff909194),
                                      fontFamily: 'din',
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xff3D9FD7),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: const Icon(
                                  Icons.arrow_downward_outlined,
                                  color: Colors.white,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 0.8,
                    indent: 1,
                    endIndent: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '09/28/2022',
                      style: TextStyle(
                          fontFamily: 'din',
                          fontSize: 12,
                          color: Color(0xff909194)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap:(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Wallet()));
                              }),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                              )
                              
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '09/28/2022',
                                  style: TextStyle(
                                      fontFamily: 'din',
                                      fontSize: 12,
                                      color: Color(0xff909194)),
                                ),
                                Row(
                                  children: [
                                    Text('ريال',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 11,
                                            color: Color(0xff3D9FD7))),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text('2,031',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'rb',
                                            fontSize: 16,
                                            color: Color(0xff3D9FD7))),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'توزيع ارباح ايجار شهري',
                                  style: TextStyle(
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  'مؤكد',
                                  style: TextStyle(
                                    color: Color(0xff909194),
                                    fontFamily: 'din',
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff3D9FD7),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: const Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.white,
                              ),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: SizedBox(
                          width: 60,
                          child: Text(
                            '1:29:51 PM',
                            style: TextStyle(
                                fontFamily: 'din',
                                fontSize: 12,
                                color: Color(0xff909194)),
                          )),
                    ),
                    Text(
                      '09/28/2022',
                      style: TextStyle(
                          fontFamily: 'din',
                          fontSize: 12,
                          color: Color(0xff909194)),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 0.9,
                indent: 1,
                endIndent: 1,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
