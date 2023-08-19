import 'package:flutter/material.dart';
import 'package:flutter_mart/screens/rating_box.dart';
import 'package:flutter_mart/screens/product_details.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Colors.white60,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 18.0,right: 18,top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Wishlist",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                  Icon(Icons.delete),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleProduct(imageUrl: '',

                )));
              },
              child: const WishListSingleProduct(
                productImage: "assets/images/img1.jpg",
                productDescription: 'Remorseful text for testing',
                productPrice: 89,
              ),
            ),
            const WishListSingleProduct(
              productImage: "assets/images/img2.jpg",
              productDescription: 'ghfdsae',
              productPrice: 89,
            ),
            const WishListSingleProduct(
              productImage: "assets/images/img3.jpg",
              productDescription: 'Remorseful text for testing the view in the system',
              productPrice: 89,
            ),
            const WishListSingleProduct(
              productImage: "assets/images/img4.jpg",
              productDescription: 'Remorseful text for testing the view in the system',
              productPrice: 89,
            ),
            const WishListSingleProduct(
              productImage: "assets/images/img5.jpg",
              productDescription: 'Remorseful text for testing the view in the system',
              productPrice: 89,
            ),
            const WishListSingleProduct(
              productImage: "assets/images/img6.jpg",
              productDescription: 'Remorseful text for testing the view in the system',
              productPrice: 89,
            ),
          ],
        ),
      ),
    );
  }
}

class WishListSingleProduct extends StatelessWidget {
  const WishListSingleProduct(
      {super.key,required this.productImage,required this.productDescription,required this.productPrice});

  final String productImage;
  final String productDescription;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        height: 180,
        child: Card(
          elevation: 0.2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                productImage,
                width: 100,
                height: 100,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(productDescription,style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("KSh. ${productPrice.toString()}"),
                      RatingBox(),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
