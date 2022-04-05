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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenheight,
                    width: screenwidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                       image: DecorationImage(
                         image:
                           AssetImage(
                               "assets/image/1st_pic.jpg"
                           ),fit: BoxFit.cover,

                       ),
                    ),
                  ),
                ),

                Text("First Picture of Asset Image ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenwidth*.08,
                  color: Colors.black54,
                ),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenheight,
                    width: screenwidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image:
                        NetworkImage(
                            "https://media.istockphoto.com/photos/colorful-background-of-pastel-powder-explosionrainbow-color-dust-on-picture-id1180542165?k=20&m=1180542165&s=612x612&w=0&h=43hlhk8qdGYP4V-u3AAxD3kPDRIzHjMNWpr-VdBQ2Js="
                        ),fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),

                Text("First Picture of Network Image ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenwidth*.07,
                  color: Colors.black87,
                ),),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenheight,
                    width: screenwidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image:
                        AssetImage(
                            "assets/image/2nd_pic.jpg"
                        ),fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),

                Text("Second Picture of Asset Image ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenwidth*.07,
                  color: Colors.black,
                ),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenheight,
                    width: screenwidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image:
                        NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJW7UOffr5f3q45-F2LLMVA_Lw784ohjOMScksKFU0UBJo-iPVqTmk4avYl0q29X6fGS4&usqp=CAU"
                        ),fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),

                Text("Second Picture of Network Image ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenwidth*.065,
                  color: Colors.black,
                ),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenheight,
                    width: screenwidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image:
                        AssetImage(
                            "assets/image/3rd_pic.jpg"
                        ),fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),

                Text("Third Picture of Asset Image ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenwidth*.07,
                  color: Colors.black38,
                ),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenheight,
                    width: screenwidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image:
                        AssetImage(
                            "assets/image/4th_pic.jpg"
                        ),fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),

                Text("Fourth Picture of Asset Image ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenwidth*.07,
                  color: Colors.black87,
                ),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: screenheight,
                    width: screenwidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image:
                        AssetImage(
                            "assets/image/5th_pic.jpg"
                        ),fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),

                Text("Fifth Picture of Asset Image ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenwidth*.075,
                ),),


              ],
            ),
          ),
        ),

    );
  }
}
