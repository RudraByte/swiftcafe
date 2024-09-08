import 'dart:ui'; // Required for BackdropFilter
import 'package:flutter/material.dart';
import 'home_page.dart'; // Import the HomePage widget

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/a.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 30, 42, 87).withOpacity(0.1), // Start color
                    const Color(0xFFCF7B4B).withOpacity(0.4), // End color
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08), // Responsive horizontal padding
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17), // Rounded corners
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Blur effect
                  child: Container(
                    width: screenWidth * 0.85, // 85% of the screen width
                    height: screenHeight * 0.8, // 80% of the screen height
                    padding: EdgeInsets.all(screenHeight * 0.025), // Responsive padding
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.115), // Semi-transparent effect
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                        Image.asset('images/b.png', height: screenHeight * 0.1), // Responsive logo size
                        SizedBox(height: screenHeight * 0.02), 
                        Text(
                          'Swift Café',
                          style: TextStyle(
                            fontSize: screenWidth * 0.08, 
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Latte but never late',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(), 
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Responsive padding
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'User Name',
                              hintStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.015), 
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Responsive padding
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF4D2B1A),
                                Color(0xFFA7745A), 
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(0, 5),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomePage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02), // Responsive button padding
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenWidth * 0.05, 
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02), 
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.white),
                            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02), // Responsive button padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.05, 
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02), 
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.04, 
                            ),
                          ),
                        ),
                      ],
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
