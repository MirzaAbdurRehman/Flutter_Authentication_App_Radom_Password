import 'package:authentication_app/Screens/signupPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Text(
              "Sign In To Continue",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Spacer(),
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
          Spacer(),
          SizedBox(
            height: 25,
          ),
          Row(children: [
            Expanded(
                //wrapping divider with expanded widget
                child: Divider(
              color: Colors.black,
            )),
            Text("OR"),
            Expanded(
                child: Divider(
              color: Colors.black,
            )),
          ]),
          SizedBox(
            height: 120,
          ),
          Padding(
            //wrap text with padding to appear it on left
            padding: const EdgeInsets.only(right: 380),
            child: Text(
              "Emaid ID*",
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff2F80ED),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                    border: const OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 52),
                      child: Text("Password"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 57),
                      child: Text("Forgot Password?"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(),
                    hintText: "********",
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff2F80ED),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                  width: 400, //wrap elevated button with sizedBox widget
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return SignupPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(shadowColor: Colors.blue),
                    child: Text("SIGN IN"),
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
              ],
            ),
          ),
          const Spacer(),
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
}
