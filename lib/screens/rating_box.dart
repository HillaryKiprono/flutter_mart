import 'package:flutter/material.dart';

class RatingBox extends StatefulWidget {
  const RatingBox({super.key});

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  final double _size = 20;

  void setRatingAsOne(){
    setState(() {
      _rating=1;
    });
  }

  void setRatingAsTwo(){
    setState(() {
      _rating=2;
    });
  }
  void setRatingAsThree(){
    setState(() {
      _rating=3;
    });
  }

  void setRatingAsFour(){
    setState(() {
      _rating=4;
    });
  }

  void setRatingAsFive(){
    setState(() {
      _rating=5;
    });
  }
  @override
  Widget build(BuildContext context) {
    print(_rating);
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              child: IconButton(
                icon: (_rating >= 1
                    ? Icon(
                        Icons.star,
                        size: _size,
                  color: Colors.orangeAccent,
                      )
                    : Icon(
                        Icons.star_border,
                        size: _size,
                  color: Colors.grey,
                      )),
                onPressed: () {setRatingAsOne();},
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >= 2
                    ? Icon(
                        Icons.star,
                        size: _size,
                  color: Colors.orangeAccent,
                      )
                    : Icon(
                        Icons.star_border,
                        size: _size,
                  color: Colors.grey,
                      )),
                onPressed: () {setRatingAsTwo();},
              ),
            ),
            Container(
              child: IconButton(
                icon: (_rating >= 3
                    ? Icon(
                        Icons.star,
                        size: _size,
                  color: Colors.orangeAccent,
                      )
                    : Icon(
                        Icons.star_border,
                        size: _size,
                  color: Colors.grey,
                      )),
                onPressed: (){setRatingAsThree();},
              ),
            ),

            Container(
              child: IconButton(
                icon: (_rating >= 4
                    ? Icon(
                  Icons.star,
                  size: _size,
                  color: Colors.orangeAccent,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                  color: Colors.grey,
                )),
                onPressed: (){setRatingAsFour();},
              ),
            ),

            Container(
              child: IconButton(
                icon: (_rating >= 5
                    ? Icon(
                  Icons.star,
                  size: _size,
                  color: Colors.orangeAccent,
                )
                    : Icon(
                  Icons.star_border,
                  size: _size,
                  color: Colors.grey,
                )),
                onPressed: (){setRatingAsFive();},
              ),
            ),

          ],
        ),
    );
  }
}
