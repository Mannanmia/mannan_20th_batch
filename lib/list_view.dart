import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/full_image.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}
List<String> namelist = [
  'First Image ',
  'second Image ',
  'Third Image ',
  'Fourth Image ',
  'Fifth Image ',
  'Sixth Image ',
  'Seventh Image ',
];
List<String> imagelist = [
  'assets/image/1st_pic.jpg',
  'assets/image/2nd_pic.jpg',
  'assets/image/3rd_pic.jpg',
  'assets/image/4th_pic.jpg',
  'assets/image/5th_pic.jpg',
];

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Center(child: Text("Last Class Assignment")),
      ),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .height,
        child: ListView.builder(
            itemCount: imagelist.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => FullImage(
                          imagelink:imagelist[index])
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      child: Column(
                        children: [
                          Image.asset(imagelist[index],),
                          Text(namelist[index])
                        ],
                      )),
                ),
              );
            }),
      ),
    );
  }
}
