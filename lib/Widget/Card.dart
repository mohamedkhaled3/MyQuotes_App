import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

////////////////////////////////////////////////////////////dart 5 dont forget delete old constructor
   String title;
  String author;

  CardWidget({required this.title , required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
          shadowColor: Color.fromARGB(255, 255, 193, 7),
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          margin: EdgeInsets.all(11),
          color: Color.fromARGB(231, 7, 168, 255),
          child: Container(
            padding: EdgeInsets.all(11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,     ////////////////////  5.1
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
              
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                      iconSize: 26,
                      color: Color.fromARGB(102, 181, 255, 7),
                    ),
                    Text(
                      author,       //////////////////// 5,2
                      style: TextStyle(fontSize: 15, color: Colors.white),
              
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
