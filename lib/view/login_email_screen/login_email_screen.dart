import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/utils/image_constants/image_constants.dart';
import 'package:teams_clone/view/enter_code_screen/enter_code_screen.dart';

import 'package:teams_clone/view/send_code_screen/send_code_screen.dart';
import 'package:teams_clone/view/sign_up/sign_up_screen_main/sign_up_screen_main.dart';

class LoginEmailScreen extends StatefulWidget {
  const LoginEmailScreen({super.key});

  @override
  State<LoginEmailScreen> createState() => _LoginEmailScreenState();
}

class _LoginEmailScreenState extends State<LoginEmailScreen> {
  GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Microsoft Teams",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(200, 63, 66, 112),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage(ImageConstants.loginPeople),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started with your work,school, or",
                      style: TextStyle(
                          color: ColorConstants.teams_blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Personal Microsoft account",
                      style: TextStyle(
                          color: ColorConstants.teams_blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                //email text field form
                _emailForm(),

                SizedBox(
                  height: 30,
                ),

                //sign_in button
                _signinButton(),

                SizedBox(
                  height: 60,
                ),
                Text("Get help with signing in",
                    style: TextStyle(
                        color: ColorConstants.teams_letter_blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 60,
                ),

                //sign in for free button
                _signupForFree()
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell _signupForFree() {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpScreenMain(),
            ));
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              width: 2, color: const Color.fromARGB(115, 134, 130, 130)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                fit: BoxFit.cover, width: 30, ImageConstants.microsoftLogo),
            SizedBox(
              width: 10,
            ),
            Text(
              "Sign up for free",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(115, 53, 52, 52),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell _signinButton() {
    return InkWell(
      onTap: () {
        if (emailKey.currentState!.validate()) {
          if (emailController.text == UserDb.email) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SendCodeScreen(),
                ));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Email id doesn't exist"),
              backgroundColor: Colors.red,
            ));
          }
        }
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: ColorConstants.teams_blue,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            "Sign in",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Form _emailForm() {
    return Form(
      key: emailKey,
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          label: Text(
            "Enter email, phone, or Skype",
            style:
                TextStyle(fontSize: 23, color: Color.fromARGB(115, 53, 52, 52)),
          ),
        ),
        validator: (value) {
          if (emailController.text != null &&
              emailController.text.isNotEmpty &&
              emailController.text.contains("@")) {
            return null;
          } else {
            return "Enter valid email id";
          }
        },
      ),
    );
  }
}
