import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/utils/image_constants/image_constants.dart';
import 'package:teams_clone/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:teams_clone/view/login_email_screen/login_email_screen.dart';
import 'package:teams_clone/view/send_code_screen/send_code_screen.dart';

class LoginPasswordInstead extends StatefulWidget {
  const LoginPasswordInstead({super.key});

  @override
  State<LoginPasswordInstead> createState() => _LoginPasswordInsteadState();
}

class _LoginPasswordInsteadState extends State<LoginPasswordInstead> {
  GlobalKey<FormState> passKey = GlobalKey<FormState>();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                ImageConstants.microsoftLogo,
                scale: 60,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Microsoft",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Text(
            "Enter Password",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.w600),
          ),

          // get the email here using to sign in

          SizedBox(
            height: 10,
          ),
          Form(
            key: passKey,
            child: TextFormField(
              controller: passController,
              decoration: InputDecoration(
                label: Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 23, color: Color.fromARGB(115, 53, 52, 52)),
                ),
              ),
              validator: (value) {
                if (passController.text != null &&
                    passController.text.isNotEmpty &&
                    passController.text.length >= 6) {
                  return null;
                } else {
                  return "Invalid password";
                }
              },
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Text("Forgot password",
              style: TextStyle(
                  color: ColorConstants.teams_letter_blue,
                  fontSize: 18,
                  fontWeight: FontWeight.normal)),

          SizedBox(
            height: 20,
          ),

          InkWell(
            onTap: () {
              if (passKey.currentState!.validate()) {
                if (passController.text == UserDb.password) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginEmailScreen(),
                      ));
                }
              }
            },
            child: Text("Email code to kichuparvathi94@gmail.com",
                style: TextStyle(
                    color: ColorConstants.teams_letter_blue,
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavScreen(),
                      ));
                },
                child: Container(
                  width: 120,
                  height: 45,
                  decoration: BoxDecoration(color: Color(0xff0067b8)),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
