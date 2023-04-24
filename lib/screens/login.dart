import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:inventory_app/widgets/pass_text_input.dart';
import 'package:inventory_app/screens/register.dart';

void gotoSignUp(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    return RegisterWidget();
  }));
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              child: Image.asset("assets/images/log_img.png"),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Email Address',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            PassTextInput(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.end,
              "Forgot Password?",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
                onPressed: () => null,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                )),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont Have an account? ",
                  style: TextStyle(color: Colors.grey),
                ),
                InkWell(
                  onTap: () => gotoSignUp(context),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(children: const <Widget>[
              Expanded(
                  child: Divider(
                color: Colors.white,
              )),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "OR",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Expanded(
                  child: Divider(
                color: Colors.white,
              )),
            ]),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.white),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/google.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 80.0),
                        child: const Text(
                          "Sign in with Google",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
