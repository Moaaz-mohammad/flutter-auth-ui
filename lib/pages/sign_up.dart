import 'package:auth_ui_app/pages/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController lastname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('assets/top.png'),
          SizedBox(height: 40),
          Text(
            'Create Account',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff64C3BF),
              ),
            ),
          ),
          Text(
            'Enter your Personal Data',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 16, color: Color(0xff000000)),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: firstname,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'First Name',
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
              controller: lastname,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Last Name',
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
              controller: phone,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Phone Number',
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
                hintText: 'Create Password',
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
              controller: confirmPassword,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility, color: Color(0xffACA7A7)),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Confirm Password',
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

          SizedBox(height: 20),

          Container(
            width: 199.63,
            height: 38.21,
            decoration: BoxDecoration(
              color: Welcome.mainColor,
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

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Already have an Account? '),
              Text('Login', style: TextStyle(color: Welcome.mainColor)),
            ],
          ),
        ],
      ),
    );
  }
}
