import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter/pages/first_signin.dart';

class FirstStarted extends StatelessWidget {
  const FirstStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/bg_social.jpeg',
                ),
                fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), // Darken the image
                    BlendMode.darken, // You can experiment with different blend modes
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Top One Panel SMM Panel Indonesia',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18),
                Text(
                  'Social Media Marketing Panel Indonesia Terbaik',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 22),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => FirstSignin()));
                  },
                  child: Image.asset(
                    'assets/ic_enter.png',
                    width: 80,
                    fit: BoxFit.fitWidth,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
