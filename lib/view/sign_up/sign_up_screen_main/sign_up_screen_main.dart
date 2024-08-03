import 'package:flutter/material.dart';
import 'package:teams_clone/user_db/user_db.dart';
import 'package:teams_clone/utils/image_constants/image_constants.dart';
import 'package:teams_clone/view/sign_up/sign_up_password/sign_up_password.dart';
import 'package:teams_clone/view/sign_up/signup_with_phonenum/signup_with_phonenum.dart';

class SignUpScreenMain extends StatefulWidget {
  const SignUpScreenMain({super.key});

  @override
  State<SignUpScreenMain> createState() => _SignUpScreenMainState();
}

class _SignUpScreenMainState extends State<SignUpScreenMain> {
  GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
              "Create account",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
            _emailform(),
            SizedBox(
              height: 20,
            ),
            _use_phone_number(context),
            SizedBox(
              height: 20,
            ),
            _get_new_email(),
            SizedBox(
              height: 20,
            ),
            _next_button()
          ],
        ),
      ),
    );
  }

  Widget _next_button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              UserDb.email = emailController.text;
              if (emailKey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPassword(),
                    ),
                    (route) => false);
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
    );
  }

  InkWell _get_new_email() {
    return InkWell(
      onTap: () {},
      child: Text("Get a new email address",
          style: TextStyle(
              color: Color.fromARGB(255, 14, 17, 219),
              fontSize: 18,
              fontWeight: FontWeight.normal)),
    );
  }

  InkWell _use_phone_number(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignupWithPhonenum(),
            ));
      },
      child: Text(
        "Use a phone number instead",
        style: TextStyle(
            color: Color.fromARGB(255, 14, 17, 219),
            fontSize: 18,
            fontWeight: FontWeight.normal),
      ),
    );
  }

  Form _emailform() {
    return Form(
      key: emailKey,
      child: TextFormField(
        controller: emailController,
        decoration: InputDecoration(
            hintText: "someone@example.com",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
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
