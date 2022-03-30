import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenheight=MediaQuery.of(context).size.height;
    double screenwidth=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
        elevation: 20,
        backgroundColor: Colors.black,

      ),
      body: Container(
          height: screenheight,
          width: screenwidth,
          color: Colors.grey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 500,
                 width: screenwidth,
                 decoration: BoxDecoration(
                   border: Border.all(
                     width: 5,
                   ),
                   borderRadius: BorderRadius.circular(100),
                   image: DecorationImage(
                     image: NetworkImage(
                       "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
                     ),
                     fit: BoxFit.cover,
                   ),
                 ),
                ),
                Container(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Name:"),
                    Text("Md Mannan Miah"),
                  ],
                ),
                  height: 300,
                  width: screenwidth,
        ),

              ],
            ),
          ),
        ),

    );
  }
}
