import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin/screens/signup_page/signup_scree2.dart';
import 'package:linkedin/widget/constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              Center(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/Logo.svg",
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Join a trusted community of 800M\nprofessionals",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "By clinking Agree & Join or Continue, you agree to the LinkedIn User Agreement, Privacy Policy, and Cookie Plicy",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScree2(),
                            ),
                          );
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(kPrimaryColor),
                        ),
                        child: const Text(
                          "Agree & Join",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: OutlinedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const SignUpScreen(),
                          //   ),
                          // );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/icons-google.svg",
                              width: 23,
                              height: 23,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Continue with Google",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: OutlinedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const SignUpScreen(),
                          //   ),
                          // );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/facebook-logo.svg",
                              width: 23,
                              height: 23,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Continue with FaceBook",
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const SignUpScreen(),
                          //   ),
                          // );
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
