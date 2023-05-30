import 'dart:math';

import 'package:flutter/material.dart';
import 'loginpage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              fit: FlexFit.loose,
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    "assets/images/header.png",
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ))),

          Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Text(
              "New User? Get Started Now",
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/googlelogo.png",
                height: 30,
                width: 30,
              ),
              Image.asset(
                "assets/images/facebooklogo.png",
                height: 30,
                width: 30,
              ),
              Image.asset(
                "assets/images/twitterlogo.png",
                height: 30,
                width: 30,
              ),
            ],
          ),

          SizedBox(
            height: 8,
          ),

          Row(
            children: [
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
              Text("OR"),
              Expanded(
                  child: Divider(
                color: Colors.black,
              )),
            ],
          ),
          SizedBox(
            height: 8,
          ),

          Padding(
            //wrap text with padding to appear it on left
            padding: const EdgeInsets.only(right: 338),
            child: Text(
              "Emaid ID*",
            ),
          ),

          SizedBox(
            height: 8,
          ),

          //An empty text feild to write something, Only UI

          SizedBox(
            width: 400, height: 25, //wrapping textfeild with Sizedbox widget

            child: TextField(
              onSubmitted: (String value) {},

              //To decorate text feild
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
          ),

          SizedBox(
            height: 8,
          ),

          Padding(
            padding: const EdgeInsets.only(right: 328),
            child: Text("Password*"),
          ),

          SizedBox(
            height: 8,
          ),

          SizedBox(
            width: 400, height: 25, //Text Feild width and Height
            child: TextField(
              controller: _controller,
              onSubmitted: (String value) {},
              decoration: InputDecoration(
                hintText: "********",
                labelText: "Password",
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          SizedBox(
            height: 14,
          ),

          Center(
            child: SizedBox(
              width: 400, //wrap elevated button with sizedBox widget
              child: ElevatedButton(
                onPressed: () {
                  _controller.text = GenerateRandomPassword();
                },
                style: ElevatedButton.styleFrom(shadowColor: Colors.blue),
                child: Text("SIGN UP"),
              ),
            ),
          ),

          SizedBox(
            height: 8,
          ),

          Text(
            "Terms and Condition | Privacy Policy",
            style: TextStyle(
              fontSize: 9,
            ),
          ),
          Flexible(
              fit: FlexFit.loose,
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset(
                    "assets/images/footer.png",
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ))),
        ],
      ),
    );
  }

  String GenerateRandomPassword() {
    String lower_case = "snxasxnsjxbehjkt";
    String Upper_Case = "XKXIETEBCGHSKEHY";
    String number = "0290273629302930";
    String symbol = "!~`@#%^&*+=-#&&`";

    String Password = "$lower_case$Upper_Case$number$symbol";

    return List.generate(16, (index) {
      int randomIndex = Random.secure().nextInt(Password.length);
      return Password[randomIndex];
    }).join();
  }
}
