import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/full_image.dart';
import 'package:untitled/gallery_image.dart';
import 'package:untitled/list_view.dart';

import 'list_view.dart';
class GridViewForMe extends StatefulWidget {
  const GridViewForMe({Key? key}) : super(key: key);

  @override
  State<GridViewForMe> createState() => _GridViewForMeState();
}
List<String> imagelist = [
  'assets/image/1st_pic.jpg',
  'assets/image/2nd_pic.jpg',
  'assets/image/3rd_pic.jpg',
  'assets/image/4th_pic.jpg',
  'assets/image/5th_pic.jpg',
  'assets/image/1st_pic.jpg',
  'assets/image/2nd_pic.jpg',
  'assets/image/3rd_pic.jpg',
  'assets/image/4th_pic.jpg',
  'assets/image/5th_pic.jpg',
];
class _GridViewForMeState extends State<GridViewForMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.image),
              Text("Grid View Page"),
            ],
          ),
        ),
      ),
      body: GridView.count(
          crossAxisCount: 3,
        children: [
      for(int i=0;i<=9;i++)
          InkWell(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>GalleryPage(
                 tempImglist: imagelist,
                 tempIndex: i,)));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border:Border.all(
                    width: 3
                  )
                ),
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .3,
                child: Image.asset(imagelist[i],fit: BoxFit.cover,),
              ),
            ),
          ),

        ],

      ) ,
    );
  }
}
