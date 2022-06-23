import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/helper/allColor.dart';
import 'package:untitled/helper/icon.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}
AllColor allColor=AllColor();
AllIcon allIcon=AllIcon();
bool showPassoff=true;
class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {

    double scHeight=MediaQuery.of(context).size.height;
    double scWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: scHeight,
        width: scWidth,
        decoration: BoxDecoration(
          color:allColor.backColor,
        ),
        child: Column(
          children: [
            Container(
              height: scHeight*.1,
              width:  scHeight*.1,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(
                   image: AssetImage("assets/image/image/Icon.jpg"),
                   fit: BoxFit.cover,
                 ),
               ),
            ),
            Padding(
              padding:const EdgeInsets.only(top: 10,left: 25,right: 25,bottom: 20),
              child: Text("WellCome to Meta",style: TextStyle(
                color: allColor.textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 25,right: 25,),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: allColor.textColor,
                  ),
                  hintStyle: TextStyle(
                    color: allColor.textColor,
                  ),
                  hintText: "sugg: abcd@gmail.com",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width:3,
                    ),
                    borderRadius:BorderRadius.only(topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius:BorderRadius.only(topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    ),
                    ),
                  suffixIcon: Icon(Icons.email_outlined,color:allColor.textColor,),

                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 25,right: 25,),
              child: TextFormField(
                obscureText: showPassoff,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color:allColor.textColor,
                  ),
                  hintStyle: TextStyle(
                    color: allColor.textColor,
                  ),
                  hintText: "Enter Your Password",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width:3,
                    ),
                    borderRadius:BorderRadius.only(topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      color: allColor.textColor,
                    ),
                    borderRadius:BorderRadius.only(topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  suffixIcon: InkWell(
                    focusColor: Colors.grey,
                    onTap: (){
                      setState(() {
                      if(allIcon.pass==Icons.password) {
                        showPassoff=false;
                        Icon(allIcon.pass = Icons.remove_red_eye_outlined);
                      }
                      else{
                        showPassoff=true;
                        Icon(allIcon.pass=Icons.password);
                      }

                      });
                    },
                      child:Icon(allIcon.pass,color: Colors.black,),),

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25,),
              child: Text("Forgot Your Password ?",textDirection: TextDirection.ltr,style: TextStyle(
                color: allColor.textColor,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
              ),
            ),
            Container(
              height: scHeight*.08,
              width: scWidth,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("Log In",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25,),
              child: Text("OR",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25,),
              child: Container(
                height: scHeight*.08,
                width: scWidth,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      Text("Continue with Facebook",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 25,right: 25,),
              child: Container(
                height: scHeight*.08,
                width: scWidth,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.g_mobiledata,size: 50,),
                      Text("Continue with Google",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    ],
                  ),
                ),
              ),
            ),
        RichText(text:TextSpan(
          children: [
            TextSpan(
                text: "By continuing,you agree to Meta's",
            ),
            TextSpan(
                text: "Terms of Services ",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),TextSpan(
                text: "& Privacy Policy .",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ]
        ),),
        // Padding(
        //
      
            Padding(
              padding:  EdgeInsets.only(top: 20,left: scWidth*.3,right: scWidth*.3),
              child: Divider(color: allColor.textColor,),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 25,right: 25,),
              child: Text("Don't have any account?SignUp",textDirection: TextDirection.ltr,style: TextStyle(
                color: allColor.textColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
