import 'package:flutter/material.dart';
import 'package:flutter_mart/screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Back!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Login to your Account to Continue Shopping",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: TextFormField(
                      controller: usernameController,
                      validator: (value) {
                        if (usernameController.text.isEmpty) {
                          return;
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Enter username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (passwordController.text.isEmpty) {
                          return;
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Enter password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  Row(
                    children: [

                      TextButton(onPressed: (){}, child: Text("Forgot password?"))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: RawMaterialButton(
                      onPressed: () {},
                      shape: const StadiumBorder(),
                      fillColor: Colors.blueGrey,
                      splashColor: Colors.greenAccent,
                      hoverColor: Colors.red,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => RegisterScreen())));
                    },
                    child: const Row(
                      children: [
                        Text("Don't have an account?"),
                        Text(
                          "Sign Up.",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
