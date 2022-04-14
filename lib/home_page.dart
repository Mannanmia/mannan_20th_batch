import 'package:flutter/material.dart';
import 'package:untitled/full_image.dart';
import 'package:untitled/list_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color btncolor = Colors.black26;
Color btncolor1 = Colors.black26;
Color btncolor2 = Colors.black26;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Mathabetha Hoye Geche")),
      ),
      body: Container(
        height: ScreenHeight,
        width: ScreenWidth,
        color: Colors.blueGrey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: btncolor,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FullImage(
                                imagelink: "assets/image/1st_pic.jpg")));
                  },
                  child: Text("First_Button"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: btncolor1,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    setState(() {
                      btncolor1 = Colors.greenAccent;
                    });
                  },
                  child: Text("ColorChange"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: btncolor2,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>MyListView()));
                    setState(() {
                      btncolor2 = Colors.red;
                    });
                  },
                  child: Text("LastClass(14th April)"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
