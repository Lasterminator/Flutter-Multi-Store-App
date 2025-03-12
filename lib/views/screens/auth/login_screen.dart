import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.95),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Your Account",
              style: GoogleFonts.getFont(
                'Lato',
                color: Color(0XFF0d120E),
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
                fontSize: 23,
              ),
            ),
            Text(
              "To Explore The World Exclusives ",
              style: GoogleFonts.getFont(
                'Lato',
                color: Color(0XFF0d120E),
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
                fontSize: 14,
              ),
            ),
            Image.asset(
              'assets/images/Illustration.png',
              width: 200,
              height: 200,
            ),

            //email
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: GoogleFonts.getFont(
                    'Nunito Sans',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            ),

            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                labelText: 'Enter Your Email',
                labelStyle: GoogleFonts.getFont(
                  'Nunito Sans',
                  fontSize: 14,
                  letterSpacing: 0.1,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/icons/email.png', width: 20, height: 20,),
                ),
              ),
            ),

            SizedBox(height: 20),

            //password
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.getFont(
                    'Nunito Sans',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            ),

            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                labelText: 'Enter Your Password',
                labelStyle: GoogleFonts.getFont(
                  'Nunito Sans',
                  fontSize: 14,
                  letterSpacing: 0.1,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/icons/password.png', width: 20, height: 20,),
                ),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
