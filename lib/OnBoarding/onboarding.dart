import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/nav_bar_screen.dart';
import 'onboarding2.dart';


class Onboaring extends StatefulWidget {
  const Onboaring ({super.key});

  @override
  State<Onboaring> createState() => _State();
}

class _State extends State<Onboaring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children : [
            _buildSkip(),
            SizedBox(height: 100),
            _buildImage(),
            SizedBox(height: 50),
            _buildText(),
            SizedBox(height: 100),
            _buildBackNext(),
          ],
        ),
      ),
      ),
    );
  }
  Widget _buildSkip(){
    return Container(
      margin: const EdgeInsets.only(top: 14),
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(onPressed: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=>BottomNavBar()));
      },
          child:Text("SKIP",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red),)),
    );
  }
  Widget _buildImage() {
    return Center(
      child: Column(
        children: [
          Container(
            child: Image.asset("images/nakbd.png",
              height: 220,
              width: 278,
              fit: BoxFit.contain,),
          ),
        ],
      ),
    );
  }
  Widget _buildText(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Manage your tasks",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 32),),
          SizedBox(height: 20,),
          Text("You can easily manage all of your daily tasks in Dome for free",
            style: TextStyle(

              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
  Widget _buildBackNext(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24).copyWith(top: 107),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Onboaring2()));
            },style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8875FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              )),
            child: Text("NEXT",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),),
        ],
      ),
    );
  }

}
