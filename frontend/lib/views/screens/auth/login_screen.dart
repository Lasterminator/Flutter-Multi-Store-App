import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mac_store_app/views/screens/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.95),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Your Email';
                    } else {
                      return null;
                    }
                  },
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
                      child: Image.asset(
                        'assets/icons/email.png',
                        width: 20,
                        height: 20,
                      ),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Your Password';
                    } else {
                      return null;
                    }
                  },
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
                      child: Image.asset(
                        'assets/icons/password.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),

                SizedBox(height: 20),

                // sign in button
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print('Correct');
                    } else {
                      print('Failed');
                    }
                  },
                  child: Container(
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF102DE1),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.getFont(
                          'Lato',
                          fontSize: 17,
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have a account?",
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(" "),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RegisterScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF102DE1),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
