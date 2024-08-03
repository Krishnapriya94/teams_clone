import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/utils/image_constants/image_constants.dart';
import 'package:teams_clone/view/enter_code_screen/enter_code_screen.dart';
import 'package:teams_clone/view/login_password_instead/login_password_instead.dart';

class SendCodeScreen extends StatefulWidget {
  const SendCodeScreen({super.key});

  @override
  State<SendCodeScreen> createState() => _SendCodeScreenState();
}

class _SendCodeScreenState extends State<SendCodeScreen> {
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
            height: 10,
          ),
          Text(
            UserDb.email,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Sign in",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We'll send a code to ",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal),
              ),
              Row(
                children: [
                  Text(
                    UserDb.email,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    " to sign you in ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPasswordInstead(),
                  ));
            },
            child: Text("Use your password instead",
                style: TextStyle(
                    color: ColorConstants.teams_letter_blue,
                    fontSize: 18,
                    fontWeight: FontWeight.normal)),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Text("Sign in with a different Microsoft account",
                style: TextStyle(
                    color: ColorConstants.teams_letter_blue,
                    fontSize: 17,
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EnterCodeScreen(),
                      ));
                },
                child: Container(
                  width: 120,
                  height: 45,
                  decoration: BoxDecoration(color: Color(0xff0067b8)),
                  child: Center(
                    child: Text(
                      "Send Code",
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
