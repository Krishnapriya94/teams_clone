import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/color_constants/color_constants.dart';
import 'package:teams_clone/utils/image_constants/image_constants.dart';
import 'package:teams_clone/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:teams_clone/view/login_password_instead/login_password_instead.dart';

import 'package:teams_clone/view/login_password_instead/login_password_instead.dart';
import 'package:teams_clone/view/send_code_screen/send_code_screen.dart';

class EnterCodeScreen extends StatefulWidget {
  const EnterCodeScreen({super.key});

  @override
  State<EnterCodeScreen> createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
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
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SendCodeScreen(),
                      ));
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black54,
                ),
              ),
              Text(
                UserDb.email,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Text(
            "Enter code",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We emailed a code to",
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
                    ". Please enter the",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Text(
                "code to sign in.",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),

          // get the email here using to sign in

          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              label: Text(
                "Enter code",
                style: TextStyle(
                    fontSize: 23, color: Color.fromARGB(115, 53, 52, 52)),
              ),
            ),
            validator: (value) {},
          ),

          SizedBox(
            height: 20,
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
