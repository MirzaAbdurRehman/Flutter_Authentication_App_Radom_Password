import 'package:flutter/material.dart';
import 'LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    print("call hogaya");
    Future.delayed(const Duration(seconds: 3), switchToLoginPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          const Spacer(),
          Text("ANGEL SURE",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff2F80ED))),
          Image.asset(
            "assets/images/logo.png",
            height: 239,
            width: 298,
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
        ]),
      ),
    );
  }
}
