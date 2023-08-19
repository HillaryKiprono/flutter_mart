import 'package:flutter/material.dart';
import 'package:flutter_mart/screens/rating_box.dart';

class SingleProduct extends StatefulWidget {
  SingleProduct({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 30),

              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.orange,
                    size: 30,
                  )
                ],
              ),
            ),

          SizedBox(
            height: 30,
          ),

              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child:  const Image(
                   fit: BoxFit.cover,
                  height: 1000,
                  image: AssetImage(
                    "assets/images/Televisions.jpeg",

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Acer SB220Q bi 21.5 inches Full HD(1920x1080) IPS Ultra-Thin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      RatingBox(),
                      Text("Acer SB220Q bi 21.5 inches Full HD(1920x1080) IPS Ultra-Thin Acer SB220Q bi 21.5 inches Full HD(1920x1080) IPS Ultra-Thin, Acer SB220Q bi 21.5 inches Full HD(1920x1080) IPS Ultra-Thin,Acer SB220Q bi 21.5 inches Full HD(1920x1080) IPS Ultra-Thin,Acer SB220Q bi 21.5 inches Full HD(1920x1080) IPS Ultra-Thin",style: TextStyle(fontStyle: FontStyle.normal),)
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Ksh. 65000.00",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () {},
                        fillColor: Colors.orange,
                        shape: const StadiumBorder(),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add to Cart",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

])
    );
  }
}
