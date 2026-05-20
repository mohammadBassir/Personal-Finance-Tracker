import 'package:flutter/material.dart';
import 'package:personalfinance/pages/Income.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF4F8F3),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              /// TOP GREEN AREA
              Container(
                height: 280,
                width: double.infinity,

                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffA5D66D),
                      Color(0xff37B87A),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80),
                  ),
                ),

                child: Stack(
                  alignment: Alignment.center,

                  children: [

                    /// CIRCLE BACKGROUND
                    Positioned(
                      top: 40,

                      child: Container(
                        height: 190,
                        width: 190,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withOpacity(0.5),
                            width: 3,
                          ),
                        ),
                      ),
                    ),

                    /// IMAGE CIRCLE
                    Positioned(
                      top: 50,

                      child: Container(
                        height: 170,
                        width: 170,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/money.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// LOGIN CARD
              Transform.translate(
                offset: const Offset(0, -40),

                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 22),

                  padding: const EdgeInsets.all(24),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),

                  child: Column(
                    children: [

                      /// TITLE
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff145A32),
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Manage your finances with ease",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 35),

                      /// USERNAME FIELD
                      TextField(
                        controller: _userName,

                        decoration: InputDecoration(
                          hintText: "Enter your username",

                          filled: true,
                          fillColor: const Color(0xffF5F7F5),

                          prefixIcon: Container(
                            margin: const EdgeInsets.all(8),

                            decoration: const BoxDecoration(
                              color: Color(0xffEAF5E8),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.person_outline,
                              color: Colors.green,
                            ),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 22),

                      /// PASSWORD FIELD
                      TextField(
                        controller: _password,
                        obscureText: isHidden,

                        decoration: InputDecoration(
                          hintText: "Enter your password",

                          filled: true,
                          fillColor: const Color(0xffF5F7F5),

                          prefixIcon: Container(
                            margin: const EdgeInsets.all(8),

                            decoration: const BoxDecoration(
                              color: Color(0xffEAF5E8),
                              shape: BoxShape.circle,
                            ),

                            child: const Icon(
                              Icons.lock_outline,
                              color: Colors.green,
                            ),
                          ),

                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isHidden = !isHidden;
                              });
                            },

                            icon: Icon(
                              isHidden
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                            ),
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      /// FORGOT PASSWORD
                      Align(
                        alignment: Alignment.centerRight,

                        child: TextButton(
                          onPressed: () {},

                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      /// LOGIN BUTTON
                      SizedBox(
                        width: double.infinity,
                        height: 60,

                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Income()));
                          },

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff49C16D),

                            elevation: 8,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),

                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              SizedBox(width: 10),

                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      /// SIGN UP
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),

                          TextButton(
                            onPressed: () {
                            },

                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}