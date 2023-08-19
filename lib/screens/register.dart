import 'package:flutter/material.dart';
import 'package:flutter_mart/screens/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Getting Started",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Create an Account to Continue with your Shopping",
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
                      controller: emailController,
                      validator: (value) {
                        if (emailController.text.isEmpty) {
                          return;
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Enter email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                  const SizedBox(
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
                              "Sign Up",
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
                    onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => LoginScreen())));},
                    child: const Row(
                      children: [
                        Text("Already have an account?"),
                        Text(
                          "Sign in",
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
