import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScree2 extends StatelessWidget {
  const SignupScree2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SvgPicture.asset(
                  "assets/Logo.svg",
                  height: 35,
                  width: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
