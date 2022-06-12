import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/helper/allString.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
AllString allString=AllString();
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double scHeight=MediaQuery.of(context).size.height;
    double scWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                height: scHeight*.10,
                width: scWidth,
                color: Colors.black45,
                child: Row(
                  children: [
                    IconButton(  color: Colors.white60,
                      iconSize: 25 ,
                        onPressed:(){

                        },
                      icon:Icon(Icons.home),) ,
                    Spacer(),
                    IconButton(  color: Colors.white60,
                      iconSize: 25 ,
                        onPressed:(){

                        },
                      icon:Icon(Icons.people_alt_outlined),) ,
                    Spacer(),
                    IconButton(  color: Colors.white60,
                      iconSize: 25 ,
                        onPressed:(){

                        },
                      icon:Icon(Icons.ondemand_video_outlined),),
                    Spacer(),
                    IconButton(
                      color: Colors.white60,
                      iconSize: 25 ,
                        onPressed:(){

                        },
                      icon:Icon(Icons.person_rounded),) ,
                    Spacer(),
                    IconButton(  color: Colors.white60,
                      iconSize: 25 ,
                        onPressed:(){

                        },
                      icon:Icon(Icons.notifications_sharp),) ,
                    Spacer(),
                    IconButton(  color: Colors.white60,
                      iconSize: 25 ,
                        onPressed:(){

                        },
                      icon:Icon(Icons.menu),)
                  ],
                ),
              ),
              Container(
                height: scHeight*.4,
                width: scWidth,
                child: Stack(
                  children: [
                    Container(
                      height: scHeight*.25,
                      width: scWidth,
                      child: Image.asset("assets/image/image/cover_pic.jpg",fit: BoxFit.cover,)
                    ),
                    Positioned(
                      top: scHeight*.125,
                      left: scWidth*.23,
                      child: Container(
                        height: scHeight*.25,
                        width: scWidth*.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/image/image/profile_pic.jpg",),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            width: 3,
                          ),
                          shape: BoxShape.circle,
                        ),
                        //child: Image.asset("assets/image/image/profile_pic.jpg",fit: BoxFit.cover,),
                      ),
                    ),
                    Positioned(
                      top: scHeight*.2,
                      right: 10,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.camera_alt_rounded,
                          color:Colors.white ,
                        size: 20,)
                      ),
                    ),
                    Positioned(
                      top: scHeight*.32,
                      right: scWidth*.3,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.camera_alt_rounded,
                          color:Colors.white ,
                        size: 20,)
                      ),
                    )

                  ],
                ),
              ),
              Text(allString.userName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              Padding(
                padding: EdgeInsets.only(top: 8.0,bottom: 8),
                child: Text(allString.userBio,textAlign: TextAlign.center,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16.5,
                  color: Colors.white38,
                ),
                ),
              ),
              Container(
                height: scHeight*(1/15),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.0,right: 4.0),
                      child: Container(
                        height: scHeight*(1/15),
                        width: scWidth*(1.8/5),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.add_circle,color: Colors.white,),
                            Text("Add to Story",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.0,right: 4.0),
                      child: Container(
                        height: scHeight*(1/15),
                        width: scWidth*(2/5),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.edit,color: Colors.white,),
                            Text("Edit profile",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ),
                    ),
                   Padding(
                     padding: EdgeInsets.only(left: 4.0,right: 4.0),
                     child: Container(
                         height: scHeight*(1/15),
                         width: scWidth*(.8/5),
                         decoration: BoxDecoration(
                           color: Colors.white10,
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: Icon(Icons.more_horiz,color: Colors.white,)
                     ),
                   )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0,left: 4.0,bottom: 4.0,right: 4.0),
                child: Container(
                  height: scHeight*(1/15),
                  width: scWidth,
                  child: Row(
                    children: [
                      Container(
                        height: scHeight*(1/15),
                        width:  scHeight*(1/15),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.privacy_tip_rounded),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("You've locked your profile",textAlign: TextAlign.left,style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: scHeight*(1/38),

                            ),),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 8.0),
                            child: Text("Learn more",textAlign:TextAlign.start,style: TextStyle(
                              color: Colors.blue,
                            ),),
                          ),
                        ],
                      )
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.white38 ,),
              ),
              Container(
                height: scHeight*(1/20),
                width: scWidth,
                child: Row(
                  children: [
                    SizedBox(height:scHeight*(1/20) ,
                    width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border_outlined ,color: Colors.white,size: 20,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("single",
                        style: TextStyle(
                        color: Colors.white,
                      ),),
                    ),
                  ],
                ),
              ),
              Container(
                height: scHeight*(1/20),
                width: scWidth,
                child: Row(
                  children: [
                    SizedBox(height:scHeight*(1/20) ,
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.access_time,color: Colors.white,size: 20,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Joined on June 2015",
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                    ),
                  ],
                ),
              ),
              Container(
                height: scHeight*(1/20),
                width: scWidth,
                child: Row(
                  children: [
                    SizedBox(height:scHeight*(1/20) ,
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.more_horiz,color: Colors.white,size: 20,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("see your about info",
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
