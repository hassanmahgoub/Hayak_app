// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:hayak_app/Screens/transactions.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
      final ScreenSize=MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                    children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                'المحفظة',
                style: TextStyle(
                    fontFamily: 'rb',
                    fontSize: 18,
                    color: Color(0xff05357D),
                    fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 6,
              ),
              const Center(
                  child: Text(
                'الرصيد المتوفر',
                style: TextStyle(
                  fontFamily: 'rb',
                  fontSize: 11,
                ),
              )),
              const SizedBox(
                height: 6,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'ريال',
                      style: TextStyle(
                          fontFamily: 'rb',
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff05357D)),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '430,466',
                    style: TextStyle(
                        fontFamily: 'din',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff05357D)),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color(0xff3D9FD7)),
                    child: const Center(
                        child: Text(
                      'سحب',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'rb', fontSize: 14),
                    )),
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color(0xff05357D)),
                    child: const Center(
                        child: Text(
                      'إضافة مبلغ',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'rb', fontSize: 14),
                    )),
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 81,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 229, 227, 227),
                            blurRadius: 3,
                            offset: Offset.fromDirection(-1, -4),
                          )
                        ],
                        color: Colors.white),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'رصيد المكافآت',
                          style: TextStyle(fontFamily: 'rb', fontSize: 11),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  'ريال',
                                  style: TextStyle(
                                      fontFamily: 'rb',
                                      fontSize: 11,
                                      color: Color(0xff05357D)),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '2,031',
                                style: TextStyle(
                                    fontFamily: 'din',
                                    fontSize: 18,
                                    color: Color(0xff05357D),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    height: 81,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 229, 227, 227),
                            blurRadius: 3,
                            offset: Offset.fromDirection(4, -4),
                          )
                        ],
                        color: Colors.white),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'رصيد نقدي',
                          style: TextStyle(fontFamily: 'rb', fontSize: 11),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  'ريال',
                                  style: TextStyle(
                                      fontFamily: 'rb',
                                      fontSize: 11,
                                      color: Color(0xff05357D)),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '2,031',
                                style: TextStyle(
                                    fontFamily: 'din',
                                    fontSize: 18,
                                    color: Color(0xff05357D),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'المعاملات',
                    style: TextStyle(
                        fontFamily: 'rb', fontSize: 14, color: Color(0xff05357D)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                      height: 204,
                      width: ScreenSize.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 229, 227, 227),
                              blurRadius: 3,
                              offset: Offset.fromDirection(4, -4),
                            )
                          ],
                          color: Colors.white),
                          child: Column(children: [
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                const Column(children: [
                                  Text('09/28/2022',style: TextStyle(fontFamily: 'din',fontSize: 12,color: Color(0xff909194)),),
                                  Row(
                                    children: [
                                      Text('ريال',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'rb',fontSize: 11,color: Color(0xff3D9FD7))),
                                      SizedBox(width: 3,),
                                      Text('2,031',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'rb',fontSize: 11,color: Color(0xff3D9FD7))),
                                    ],
                                  ),
                                  
                                ],),
                                
                                Expanded(child: Container()),
                                
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('توزيع ارباح ايجار شهري',style: TextStyle(fontFamily: 'din',fontSize: 11,),),
                                    Text('مؤكد',style: TextStyle(color: Color(0xff909194),fontFamily: 'din',fontSize: 11,),),
                                  ],
                                ),
                                const SizedBox(width: 5,),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(color: const Color(0xff3D9FD7),borderRadius: BorderRadius.circular(9),),child: const Icon(Icons.arrow_downward_outlined,color: Colors.white,),)
                              ]),
                            ),
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                const Column(children: [
                                  Text('09/28/2022',style: TextStyle(fontFamily: 'din',fontSize: 12,color: Color(0xff909194)),),
                                  Row(
                                    children: [
                                      Text('ريال',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'rb',fontSize: 11,color: Color(0xff3D9FD7))),
                                      SizedBox(width: 3,),
                                      Text('2,031',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'rb',fontSize: 11,color: Color(0xff3D9FD7))),
                                    ],
                                  ),
                                  
                                ],),
                                
                                Expanded(child: Container()),
                                
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('توزيع ارباح ايجار شهري',style: TextStyle(fontFamily: 'din',fontSize: 11,),),
                                    Text('مؤكد',style: TextStyle(color: Color(0xff909194),fontFamily: 'din',fontSize: 11,),),
                                  ],
                                ),
                                const SizedBox(width: 5,),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(color: const Color(0xff3D9FD7),borderRadius: BorderRadius.circular(9),),child: const Icon(Icons.arrow_downward_outlined,color: Colors.white,),)
                              ]),
                            ),
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                const Column(children: [
                                  Text('09/28/2022',style: TextStyle(fontFamily: 'din',fontSize: 12,color: Color(0xff909194)),),
                                  Row(
                                    children: [
                                      Text('ريال',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'rb',fontSize: 11,color: Color(0xff3D9FD7))),
                                      SizedBox(width: 3,),
                                      Text('2,031',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'rb',fontSize: 11,color: Color(0xff3D9FD7))),
                                    ],
                                  ),
                                  
                                ],),
                                
                                Expanded(child: Container()),
                                
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('توزيع ارباح ايجار شهري',style: TextStyle(fontFamily: 'din',fontSize: 11,),),
                                    Text('مؤكد',style: TextStyle(color: Color(0xff909194),fontFamily: 'din',fontSize: 11,),),
                                  ],
                                ),
                                const SizedBox(width: 5,),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(color: const Color(0xff3D9FD7),borderRadius: BorderRadius.circular(9),),child: const Icon(Icons.arrow_downward_outlined,color: Colors.white,),)
                              ]),
                            ),
                           
                          ],),
                          ),
                          const SizedBox(height: 10,),
                           InkWell(
                             child: Container(
                              decoration: BoxDecoration(
                                                     borderRadius: BorderRadius.circular(9),
                                                     boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 229, 227, 227),
                                blurRadius: 3,
                                offset: Offset.fromDirection(4, -4),
                              )
                                                     ],
                                                     color: Colors.white),
                              height: 40,width: ScreenSize.width,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Icon(Icons.arrow_back_ios,size: 18,),
                                  Text('اطلع أكثر',style: TextStyle(fontFamily: 'rb',fontSize: 14,color: Color(0xff05357D)),),
                                ],),
                              ),
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const transactions()));
                              },
                           ),
                            const SizedBox(height: 10,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                              Text('وسائل الدفع',style: TextStyle(fontFamily: 'rb',fontSize: 14,color: Color(0xff05357D)),),
                            SizedBox(height: 10,),
                            
                            ],),
                            const SizedBox(height: 20,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Text('البطاقات',style: TextStyle(fontFamily: 'rb',fontSize: 11),)],),
                              const SizedBox(height: 10,),
                            Container(
                              height: 40,
                              width: ScreenSize.width,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xffCACBCD),width: 1.5),
                                borderRadius: BorderRadius.circular(9)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Text('إضافة بطاقة جديدة',style: TextStyle(fontFamily: 'rb',fontSize: 11,color: Color(0xff909194)),),
                                SizedBox(width: 10,),
                                Icon(Icons.add,color: Color(0xff909194),size: 20,)
                                ],),
                                ),
                                const SizedBox(height: 10,),
                                const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Text('الحسابات البنكية',style: TextStyle(fontFamily: 'rb',fontSize: 11),)],),
                              const SizedBox(height: 10,),
                            Container(
                              height: 40,
                              width: ScreenSize.width,
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xffCACBCD),width: 1.5),
                                borderRadius: BorderRadius.circular(9)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Text('إضافة بطاقة جديدة',style: TextStyle(fontFamily: 'rb',fontSize: 11,color: Color(0xff909194)),),
                                SizedBox(width: 10,),
                                Icon(Icons.add,color: Color(0xff909194),size: 20,),
                                ],),
                                ),
                                const SizedBox(height: 20,),
                    ],
                  ),
            ),
          )),
    );
  }
}
