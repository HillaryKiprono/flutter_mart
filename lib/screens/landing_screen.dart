import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // image: DecorationImage(image: AssetImage("assets/images/"))
            ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 78.0),
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration:BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://media.istockphoto.com/id/923079848/photo/online-shopping.jpg?s=612x612&w=0&k=20&c=74cW4LDlcWRKlMMs49RKg2_-9lsCetPni4fhKjW7RhQ="),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RawMaterialButton(
                  fillColor: Colors.grey,
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.app_registration),
                        SizedBox(
                          width: 28,
                        ),
                        Text("Register"),
                      ],
                    ),
                  ),
                ),
                RawMaterialButton(
                  fillColor: Colors.grey,
                  shape: StadiumBorder(),
                  splashColor:Colors.blue ,
                  onPressed: () {},
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login),
                        SizedBox(
                          width: 28,
                        ),
                        Text("Login"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
