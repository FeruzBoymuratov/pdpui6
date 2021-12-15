import 'package:flutter/material.dart';
import 'package:pdpui6/library/animation/FadeAnimation.dart';

class SignInPage extends StatefulWidget {
  static final String id = "sign_in_page";
  const SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}
  bool _isSigned = true;
class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img.png"),
            fit: BoxFit.cover,
          ),
        ),
         child: Container(
           padding: EdgeInsets.all(20),
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topCenter,
               colors: [

                 Colors.black.withOpacity(0.9),
                 Colors.black.withOpacity(0.7),
                 Colors.black.withOpacity(0.5),
                 Colors.black.withOpacity(0.3),

               ],
             ),
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
            SizedBox(height: 100,),
            FadeAnimation(1, Text("Find the best parties near you.", style: TextStyle(color: Colors.yellow[700], fontSize: 35),)),

               SizedBox(height: 20,),
               FadeAnimation(1.5, Text("Let us find you a tutorial for your interest", style: TextStyle(color: Colors.greenAccent, fontSize: 17, fontWeight: FontWeight.w500),)),
               SizedBox(height: 370,),
               _isSigned ?
               Container(
                 height: 45,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(22),
                   color: Colors.orange[700],
                 ),
                 child: Center(
                   child: Text("Start", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                 ),
               ) :
              Row(
             children: [
               Expanded(
                 child: Container(
                   margin: EdgeInsets.all(5),
                   height: 40,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(22),
                     color: Colors.red[500],
                   ),
                   child: Center(
                     child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                   ),
                 ),
               ),
               Expanded(
                 child: Container(
                   margin: EdgeInsets.all(5),
                   height: 40,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(22),
                     color: Colors.blue[500],
                   ),
                   child: Center(
                     child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),
                   ),
                 ),
               ),
             ],
         ),
             ],
           ),
         ),
      ),
    );
  }
}
