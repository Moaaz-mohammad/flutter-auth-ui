import 'package:auth_ui_app/pages/Welcome.dart';
import 'package:auth_ui_app/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('assets/top.png'),
          SizedBox(height: 40),
          Text(
            'Welcome back!',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Welcome.mainColor,
              ),
            ),
          ),
          Text(
            'Login',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16,
                color: Color(0xff000000),
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          Image.asset('assets/home.png', width: 320),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email',
                hintStyle: TextStyle(color: Color(0xffACA7A7)),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Welcome.mainColor, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Welcome.mainColor, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility, color: Color(0xffACA7A7)),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                hintStyle: TextStyle(color: Color(0xffACA7A7)),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Welcome.mainColor, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Welcome.mainColor, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Text(
              'Forget Password? ',
              style: TextStyle(color: Welcome.mainColor),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: 199.63,
            height: 38.21,
            decoration: BoxDecoration(
              color: Welcome.mainColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Login',
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

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Don’t Have Account? '),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (R) => SignUp()),
                  ),
                },
                child: Text(
                  'SignUp',
                  style: TextStyle(color: Welcome.mainColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
