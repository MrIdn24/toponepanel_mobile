
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffE4EFF9),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                      color: Color(0xff06467C)
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 16, left: 5, right: 5, bottom: 20),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/ic_topone_v1.png',
                                width: 150,
                                fit: BoxFit.fitWidth,
                              ),
                              Image.asset(
                                'assets/ic_default_profile.png',
                                height: 40,
                                fit: BoxFit.fitHeight,
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              Text(
                                'Halo, ',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'Bariq 😊',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -80),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 27, right: 27),
                        padding: const EdgeInsets.all(22),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff2575BA),
                                  ),
                                  child:
                                  Image.asset(
                                    'assets/ic_wallet.png',
                                    height: 20,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(width: 9),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sisa Saldo Anda',
                                      style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: const Color(0xff7F838B),
                                          fontWeight: FontWeight.w300
                                      ),
                                    ),
                                    Text(
                                      'Rp 100.000,00',
                                      style: GoogleFonts.openSans(
                                          fontSize: 18,
                                          color: const Color(0xff131B2B),
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Container(
                              width: double.infinity,
                              height: 2,
                              color: const Color(0xffF1F1F1),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xff2575BA),
                                  ),
                                  child:
                                  Image.asset(
                                    'assets/ic_cart_top.png',
                                    height: 20,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(width: 9),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pesanan Anda Bulan Ini',
                                      style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          color: const Color(0xff7F838B),
                                          fontWeight: FontWeight.w300
                                      ),
                                    ),
                                    Text(
                                      'Rp 80.000,00',
                                      style: GoogleFonts.openSans(
                                          fontSize: 18,
                                          color: const Color(0xff131B2B),
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              width: double.infinity,
                              child: Text(
                                'Menu',
                                style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: const Color(0xff001a2d),
                                    fontWeight: FontWeight.w700
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color: const Color(0xffE9477A),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              )
                                            ]
                                        ),
                                        child:
                                        Image.asset(
                                          'assets/ic_crown.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          'Peringkat',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              color: const Color(0xff131B2B),
                                              fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color: const Color(0xffE9477A),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              )
                                            ]
                                        ),
                                        child:
                                        Image.asset(
                                          'assets/ic_add_cart.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          'Buat Pesanan',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              color: const Color(0xff131B2B),
                                              fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color: const Color(0xffE9477A),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              )
                                            ]
                                        ),
                                        child:
                                        Image.asset(
                                          'assets/ic_add_more.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          'Pesanan Masal',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              color: const Color(0xff131B2B),
                                              fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color: const Color(0xffE9477A),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              )
                                            ]
                                        ),
                                        child:
                                        Image.asset(
                                          'assets/ic_cart_top.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          'Riwayat Pemesanan',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              color: const Color(0xff131B2B),
                                              fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color: const Color(0xffE9477A),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              )
                                            ]
                                        ),
                                        child:
                                        Image.asset(
                                          'assets/ic_cycle.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          'Refill',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              color: const Color(0xff131B2B),
                                              fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color: const Color(0xffE9477A),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              )
                                            ]
                                        ),
                                        child:
                                        Image.asset(
                                          'assets/ic_deposit.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          'Deposit',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              color: const Color(0xff131B2B),
                                              fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color: const Color(0xffE9477A),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              )
                                            ]
                                        ),
                                        child:
                                        Image.asset(
                                          'assets/ic_wallet.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          'Riwayat Deposit',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              color: const Color(0xff131B2B),
                                              fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 45,
                                        height: 45,
                                        padding: const EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color: const Color(0xffE9477A),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0, 3),
                                              )
                                            ]
                                        ),
                                        child:
                                        Image.asset(
                                          'assets/ic_chat.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      SizedBox(
                                        width: 80,
                                        child: Text(
                                          'Tiket',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              color: const Color(0xff131B2B),
                                              fontWeight: FontWeight.w600
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
