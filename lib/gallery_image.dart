import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  List<String> tempImglist;
  int tempIndex;
   GalleryPage({Key? key,
   required this.tempImglist,
   required this.tempIndex,
   }) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight= MediaQuery.of(context).size.height;
    double screenwidth= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Gallery")),
    ),
      body: Column(
        children: [
          Stack(
            children: [
             Padding(
                padding: EdgeInsets.only(top:4.0,left:screenwidth*.1,right: screenwidth*.1),
                child: Container(
                  height: screenHeight-270,
                  width: screenwidth*.8,
                  child: Image.asset(widget.tempImglist[widget.tempIndex],fit: BoxFit.cover,),
                ),
              ),
              Positioned(
                top: screenHeight*.4,
                child: IconButton(onPressed: (){
                  setState(() {
                    if( widget.tempIndex>0)
                      widget.tempIndex=widget.tempIndex-1;
                  });
                },
                    icon: Icon(Icons.arrow_back_ios_outlined,size: 25,
                      color:Colors.tealAccent ,)
                ),
              ),
              Positioned(
                top: screenHeight*.4,
                right: screenwidth*.000001,
                child: IconButton(onPressed: (){
                  setState(() {
                    if( widget.tempIndex<widget.tempImglist.length-1)
                      widget.tempIndex=widget.tempIndex+1;
                  });
                },
                    icon: Icon(Icons.arrow_forward_ios_outlined,size: 25,
                      color:Colors.tealAccent)
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for(int j=0;j<widget.tempImglist.length;j++)
                  widget.tempIndex==j?
                    InkWell(
                      onTap: (){
                        setState(() {
                          widget.tempIndex=j;
                        });
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        child: Image.asset(widget.tempImglist[j],fit: BoxFit.cover,),
                      ),
                    ):
                  InkWell(
                    onTap: (){
                      setState(() {
                        widget.tempIndex=j;
                      });
                    },
                    child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(widget.tempImglist[j],fit: BoxFit.cover,),
                      ),
                  ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
