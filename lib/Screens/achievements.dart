
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

@override
_AchievementsState createState() => _AchievementsState();
}
class _AchievementsState extends State<StatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 248),
      appBar: AppBar(title: Text('Student Achivement'),elevation: 0.0),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [ 
              round('60%','Project Competition',0.6, Color.fromARGB(255, 5, 8, 223),), round('30%','Events Attendsd',0.3, Color.fromARGB(255, 166, 8, 228),),],), 
              Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [ 
              round('55%','Product ',0.55, Color.fromARGB(255, 42, 192, 62),), round('0%','Patent',0.0, Colors.deepPurple,),],),
               Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [ 
              round('0%','Technical Competition',0.0, Color.fromARGB(255, 63, 5, 163),), round('80%','Paper Presentation',0.8, Colors.deepPurple,),],),
               Row( mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [ 
              round('20%','Internship',0.2, Color.fromARGB(255, 153, 143, 7),), round('80%','Online Courses',0.8, Color.fromARGB(255, 4, 137, 155),),],),
          
          
               ],
        ),
      ),
    );
  }
  round (String text , String text1,double num1,Color vannam){
    return  Column(
      children: [
        CircularPercentIndicator(
                    animation: true,
                    animationDuration: 10000,
                    radius: 110,
                    lineWidth: 13,
                    percent: num1,
                    progressColor:vannam,
                    backgroundColor: Color.fromARGB(255, 170, 170, 172),
                    circularStrokeCap: CircularStrokeCap.round,
                    center:  Text(text,
                    style: TextStyle(fontSize: 25,color: Colors.deepPurple),),
                  ),
                  SizedBox(height: 20,),
                  Text(text1,style:GoogleFonts.roboto(fontSize: 18,) )
      ],
    );
  }
}
