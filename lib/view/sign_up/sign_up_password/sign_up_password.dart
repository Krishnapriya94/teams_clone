import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/image_constants/image_constants.dart';
import 'package:teams_clone/view/login_email_screen/login_email_screen.dart';
import 'package:teams_clone/view/sign_up/sign_up_screen_main/sign_up_screen_main.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({super.key});

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
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
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreenMain(),
                        ));
                  },
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
              SizedBox(
                width: 10,
              ),
              Text(
                UserDb.email,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Enter password",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
            key: passKey,
            child: TextFormField(
              controller: passController,
              decoration: InputDecoration(
                  label: Text(
                    "Password",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  hintText: "Password with min 6 characters",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              validator: (value) {
                if (passController.text != null &&
                    passController.text.isNotEmpty &&
                    passController.text.length >= 6) {
                  return null;
                } else {
                  return "Enter valid password";
                }
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Forgot password",
              style: TextStyle(
                  color: Color.fromARGB(255, 14, 17, 219),
                  fontSize: 18,
                  fontWeight: FontWeight.normal)),
          SizedBox(
            height: 20,
          ),
          Text("Sign in with a different Microsoft account",
              style: TextStyle(
                  color: Color.fromARGB(255, 14, 17, 219),
                  fontSize: 16,
                  fontWeight: FontWeight.normal)),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    UserDb.password = passController.text;
                    if (passKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginEmailScreen(),
                          ));
                    }
                  });
                },
                child: Container(
                  width: 120,
                  height: 45,
                  decoration: BoxDecoration(color: Color(0xff0067b8)),
                  child: Center(
                    child: Text(
                      "Next",
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
