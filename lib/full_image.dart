import 'package:flutter/material.dart';

class FullImage extends StatefulWidget {
  String imagelink;
  FullImage({Key? key,
    required this.imagelink,
  }) : super(key: key);

  @override
  State<FullImage> createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade400,
      ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(widget.imagelink,fit: BoxFit.cover,),
        ),
    );
  }
}
