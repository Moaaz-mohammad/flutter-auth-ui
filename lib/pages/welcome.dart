import 'package:auth_ui_app/pages/login.dart';
import 'package:auth_ui_app/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  static const mainColor = Color(0xff64C3BF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/top.png'),
          SizedBox(height: 50),
          Text(
            'Welcome!',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: mainColor,
              ),
            ),
          ),
          Text(
            'Find the things that you Love!',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 16, color: Color(0xff000000)),
            ),
          ),
          SizedBox(height: 70),
          Image.asset('assets/home.png'),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => SignUp()),
              ),
            },
            child: Container(
              width: 199.63,
              height: 38.21,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (r) => Signin()),
              ),
            },
            child: Container(
              width: 199.63,
              height: 38.21,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: mainColor, width: 2),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
