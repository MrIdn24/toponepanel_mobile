import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstSignin extends StatefulWidget {
  const FirstSignin({super.key});

  @override
  State<FirstSignin> createState() => _FirstSigninState();
}

class _FirstSigninState extends State<FirstSignin> {
  TextEditingController passwordConstroller = TextEditingController();
  TextFormField passwordField = TextFormField();

  bool _isObscured = true;
  IconData _icon = Icons.visibility;
  bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4EFF9),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/ic_topone_v1.png',
                height: 55,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 70),
              Text(
                'Selamat datang. \nMasuk dan dapatkan keuntungan.',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: const Color(0xff06467C),
                    fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 70),
              TextFormField(
                style: GoogleFonts.openSans(
                    color: const Color(0xff06467C)
                ),
                decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.4),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17)
                    ),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.openSans(
                        color: const Color(0xff06467C)
                    )
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: GoogleFonts.openSans(
                    color: const Color(0xff06467C)
                ),
                controller: passwordConstroller,

                decoration: InputDecoration(
                  fillColor: Colors.white.withOpacity(0.4),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(17)
                  ),
                  hintText: 'Kata sandi',
                  hintStyle: GoogleFonts.openSans(
                      color: Color(0xff06467C)
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _icon,
                      color: Color(0xff06467C),
                    ),
                    onPressed: () {
                      _toggleVisibility();
                    },
                  ),
                ),
                obscureText: _obscureText,
              ),
              SizedBox(height: 8),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                    'Lupa Password?',
                    style: GoogleFonts.poppins(
                        color: Color(0xff06467C),
                        decoration: TextDecoration.underline
                    ),
                    textAlign: TextAlign.right
                ),
              ),
              SizedBox(height: 117),
              Container(
                width: double.infinity,
                height: 55,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xff06467C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17)
                      )
                  ),
                  onPressed: () {

                  },
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum Mempunyai Akun? ',
                      style: GoogleFonts.poppins(
                          color: Color(0xff06467C)
                      ),
                    ),
                    Text(
                      'Daftar',
                      style: GoogleFonts.poppins(
                          color: Color(0xff06467C),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
      _icon = _isObscured ? Icons.visibility : Icons.visibility_off;
      _obscureText = _isObscured ? false : true;
    });
  }
}

