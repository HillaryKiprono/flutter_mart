import 'package:flutter/material.dart';
import 'package:flutter_mart/screens/login.dart';
import 'package:flutter_mart/screens/register.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/banner_image.jpg",
            fit: BoxFit.cover,
          ),
        ),

        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                child: RawMaterialButton(

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  shape: const StadiumBorder(),
                  fillColor: Colors.blue,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.app_registration),
                      SizedBox(width: 20,),
                      Text(
                        "Login Here",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                  child: RawMaterialButton(

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                    },
                    shape: const StadiumBorder(),
                    fillColor: Colors.blue,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.app_registration),
                        SizedBox(width: 20,),
                        Text(
                          "Register Here",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );


  }
}
