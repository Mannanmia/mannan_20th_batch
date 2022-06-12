import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/full_image.dart';
import 'package:untitled/list_view.dart';
import 'package:untitled/grid_view.dart';
import 'package:untitled/loginPage/loginPage.dart';
import 'package:untitled/porifle_view/profile_page.dart';

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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("Learning")),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
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
                  child: Text("List view"),
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
                    primary: btncolor,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>GridViewForMe()));
                    setState(() {
                    });
                  },
                  child: Text("Grid View"),
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
                    primary: btncolor,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>ProfilePage()));
                    setState(() {
                    });
                  },
                  child: Text("Profile Page"),
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
                    primary: btncolor,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>LogInPage()));
                    setState(() {
                    });
                  },
                  child: Text("LogIn Page"),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Container(
        height: screenHeight,
        width: screenWidth*.75,
        color: Colors.white,
        child: Padding(
          padding:EdgeInsets.all(screenWidth*.03),
          child: Column(
            children: [
              Container(
                height: screenHeight*.25,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  image: DecorationImage(
                    image: AssetImage("assets/image/image/appDrawer.jpg",),
                    fit:BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screenWidth*.03),
                      child: Container(
                        height: screenHeight*.125,
                        width:screenHeight*.125 ,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage("assets/image/image/profile_pic.jpg"),
                           fit: BoxFit.contain,
                         ),
                       ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:screenWidth*.03,bottom: 8),
                      child: Container(
                        color: Colors.white,
                        child: Text("Md Mannan Hossain Nayeem",style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black87,
                        ),),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:screenWidth*.03),
                      child: Container(
                        color: Colors.white,
                          child: Text("mannanmia62662@gmail.com",)),
                    ),
                  ],
                ),
              ),
              Spacer(),
              drawerOption(Icons.home,"Home"),
              Spacer(),
              drawerOption(Icons.person,"Profile"),
              Spacer(),
              drawerOption(Icons.inbox_outlined,"Inbox"),
              Spacer(),
              drawerOption(Icons.mail_rounded,"Mail"),
              Spacer(),
              drawerOption(Icons.settings,"Settings"),
              Spacer(),
              drawerOption(Icons.logout_outlined,"Log out"),
              Spacer(),
              Padding(
                padding:EdgeInsets.only(left: 18.0,right: 18),
                child: Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              drawerOption(Icons.share_arrival_time_rounded, "Share with Friend ?"),
              Spacer(),
              drawerOption(Icons.feedback_outlined, "Help & Feedback"),
              Spacer(),
            ],
          ),
        ),
      )
    );
  }
}
Container drawerOption(IconData drawerIcon,String drawerText){
  return Container(
    child: Row(
      children: [
        Icon(drawerIcon,),
        SizedBox(
          width: 10,
        ),
        Text(drawerText,style: TextStyle(
          //fontWeight: FontWeight.bold,
          fontSize:20,
        ),)
      ],
    ),
  );
}
