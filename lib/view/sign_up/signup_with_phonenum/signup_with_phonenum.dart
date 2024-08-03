import 'package:flutter/material.dart';
import 'package:teams_clone/view/sign_up/sign_up_screen_main/sign_up_screen_main.dart';

class SignupWithPhonenum extends StatefulWidget {
  const SignupWithPhonenum({super.key});

  @override
  State<SignupWithPhonenum> createState() => _SignupWithPhonenumState();
}

class _SignupWithPhonenumState extends State<SignupWithPhonenum> {
  GlobalKey<FormState> phoneKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 80),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.network(
                      scale: 50,
                      fit: BoxFit.cover,
                      "https://th.bing.com/th/id/R.3d6a2ad56bc3403c5cfcc3efe09b741b?rik=gnNKMMZSvZ3uMA&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2fpurepng.com-microsoft-logo-iconlogobrand-logoiconslogos-251519939091wmudn.png&ehk=1%2fl4i5MeDLTCpvZhUZlCefvhSzsGR16HIPqagpDxYDg%3d&risl=&pid=ImgRaw&r=0"),
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

              //provide phone number here
              _phone_form(),

              SizedBox(
                height: 20,
              ),

              //use email instead- redirect to sign up screen
              _use_email(context),

              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "By providing your phone number, you agree to receive service notifications to your mobile phone. "),
                  Text("Text messaging rates may apply."),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              //next button
              _next_button(),
            ]),
      ),
    );
  }

  Row _next_button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {},
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

  InkWell _use_email(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpScreenMain(),
            ));
      },
      child: Text("Use your email instead",
          style: TextStyle(
              color: Color.fromARGB(255, 14, 17, 219),
              fontSize: 18,
              fontWeight: FontWeight.normal)),
    );
  }

  Form _phone_form() {
    return Form(
      key: phoneKey,
      child: TextFormField(
        controller: phoneController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: "Phone Number",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
      ),
    );
  }
}
