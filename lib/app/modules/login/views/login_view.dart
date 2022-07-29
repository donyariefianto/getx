import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Colors.white,
                  minimumSize: Size(88, 36),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: 40,
                        image: AssetImage('assets/images/google.png'),
                      ),
                    ),
                    Text(
                      "Sign In With Google",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                onPressed: () {
                  controller.login();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
