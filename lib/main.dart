import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "first app",
      home: MyHomePage(

      ),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home page")),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight/2,
              width: screenWidth/2,
              child: Text("kichui thik vabe kaj kore na,kokhon ki karone error khai ,mathar upor diye jay",style: TextStyle(
                fontSize: screenWidth * .045,
                fontWeight:FontWeight.w500,
                  color: Colors.black87,
              ),),
              color: Colors.grey,
            ),
            Container(
              height: screenHeight/2,
              width: screenWidth,
              child: Text("kichui thik vabe kaj kore na,kokhon ki karone error khai ,mathar upor diye jay",style: TextStyle(
                fontSize: screenWidth * .03,
                fontWeight:FontWeight.w500,
                color: Colors.black87,
              ),),
              color: Colors.grey,
            ),
          ],
          
        ),
      ),
    );
  }
}
