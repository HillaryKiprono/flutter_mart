import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const StadiumBorder(),
        leading: const CircleAvatar(
          child: Image(
              image: AssetImage("assets/images/profile.jpg"),
              fit: BoxFit.cover),
        ),
        toolbarHeight: 80,

        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Hi,",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Hillary",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
              size: 36,
            ),
          ),
        ],
      ),
      body:  Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.grey, // Set the background color here
                    padding: EdgeInsets.all(8.0), // Optional padding for the search bar
                    child: SearchBar(
                      leading: Icon(Icons.search),
                    ),
                  ),
                ),


                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 50,
                      width: 50,
                    child: Icon(Icons.dashboard_outlined),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
