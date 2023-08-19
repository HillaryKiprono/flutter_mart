import 'package:flutter/material.dart';
import 'package:flutter_mart/screens/home_page.dart';
import 'package:flutter_mart/screens/landing_screen.dart';
import 'package:flutter_mart/screens/product_details.dart';
import 'package:flutter_mart/screens/wishlist.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mart',
      theme: ThemeData(

      ),
      home:SplashView(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("  Mart",style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(width: 30.0,),
            Icon(Icons.shopping_cart,size: 30,)
          ],
        ),
          loadingIndicator: RefreshProgressIndicator(),
        done: Done( HomeScreen()),
        duration: const Duration(seconds: 6),
        // SplashView(
        //
        //   duration: Duration(milliseconds: 1000),
        //   done: Done(SignUp()),
        //   title: Center(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Text(
        //           "FlutterMart",
        //           style: TextStyle(
        //               color: Colors.black,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 30),
        //         ),
        //         Container(
        //           width: 60,
        //          height: 60,
        //          decoration: BoxDecoration(
        //            color: Colors.brown,
        //            borderRadius: BorderRadius.circular(20)
        //          ),
        //           child: Icon(
        //             Icons.shopping_cart_checkout_outlined,
        //             color: Colors.white,
        //             size: 30,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

      )
    );
  }
}

