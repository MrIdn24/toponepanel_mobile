import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstRegister extends StatefulWidget {
  const FirstRegister({super.key});

  @override
  State<FirstRegister> createState() => _FirstRegisterState();
}

class _FirstRegisterState extends State<FirstRegister> {
  TextEditingController passwordConstroller = TextEditingController();
  TextFormField passwordField = TextFormField();

  bool _isObscured1 = true;
  bool _obscureText1 = true;
  IconData _icon1 = Icons.visibility;


  bool _isObscured2 = true;
  bool _obscureText2 = true;
  IconData _icon2 = Icons.visibility;

  String _passwordError = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE4EFF9),
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
              SizedBox(height: 50),
              Text(
                'Segara daftar dan dapatkan keuntungan.',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Color(0xff06467C),
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 50),
              TextFormField(
                style: GoogleFonts.openSans(
                    color: Color(0xff06467C)
                ),
                decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.4),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(17)
                    ),
                    hintText: 'Nama Lengkap',
                    hintStyle: GoogleFonts.openSans(
                        color: Color(0xff06467C)
                    ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: GoogleFonts.openSans(
                    color: Color(0xff06467C)
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
                        color: Color(0xff06467C)
                    )
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: GoogleFonts.openSans(
                    color: Color(0xff06467C)
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
                  errorText: _passwordError,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _icon1,
                      color: Color(0xff06467C),
                    ),
                    onPressed: () {
                      _toggleVisibility(1);
                    },
                  ),
                ),
                obscureText: _obscureText1,
              ),
              SizedBox(height: 20),
              TextFormField(
                style: GoogleFonts.openSans(
                    color: Color(0xff06467C)
                ),
                decoration: InputDecoration(
                  fillColor: Colors.white.withOpacity(0.4),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(17)
                  ),
                  hintText: 'Konfirmasi Kata sandi',
                  hintStyle: GoogleFonts.openSans(
                      color: Color(0xff06467C)
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _icon2,
                      color: Color(0xff06467C),
                    ),
                    onPressed: () {
                      _toggleVisibility(2);
                    },
                  ),
                ),
                obscureText: _obscureText2,
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerRight,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Dengan mendaftar berarti Anda setuju dengan',
                        style: GoogleFonts.poppins(
                            color: Color(0xff06467C),
                        ),
                        textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 5),
                    Text(
                        'Ketentuan Layanan.',
                        style: GoogleFonts.poppins(
                            color: Color(0xff06467C),
                            decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600
                        ),
                        textAlign: TextAlign.left
                    )
                  ],
                ),
              ),
              SizedBox(height: 35),
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
                    'Daftar',
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
                      'Sudah Mempunyai Akun? ',
                      style: GoogleFonts.poppins(
                          color: Color(0xff06467C)
                      ),
                    ),
                    Text(
                      'Masuk',
                      style: GoogleFonts.poppins(
                          color: Color(0xff06467C),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  void _toggleVisibility(int id) {
    setState(() {
      switch(id){
        case 1:
          _isObscured1 = !_isObscured1;
          _icon1 = _isObscured1 ? Icons.visibility : Icons.visibility_off;
          _obscureText1 = _isObscured1 ? false : true;
        case 2:
          _isObscured2 = !_isObscured2;
          _icon2 = _isObscured2 ? Icons.visibility : Icons.visibility_off;
          _obscureText2 = _isObscured2 ? false : true;
      }
    });
  }

  void _validate(){
    setState(() {
      String password = passwordConstroller.text;

      if (password.isEmpty){
        _passwordError = 'Isian Nama diperlukan.';
      }else{
        _passwordError = '';
        print('Password : $password');
      }
    });
  }
}
