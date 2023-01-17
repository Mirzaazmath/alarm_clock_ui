

import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart' as effect;

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkmode= false;
  bool _switch=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 2,
            backgroundColor: darkmode ?Colors.grey[850]: Colors.grey[300],
            title: Text("Alarm clock" ,style: TextStyle(color: darkmode ?Colors.white : Colors.black,),


            ),
            actions: [
              Transform.scale(
                scale: 1.1,
                child: CupertinoSwitch(



                  // thumb colors
                  activeColor: Colors.grey[500],
                  trackColor: Colors.grey[900],

                  value: darkmode,
                  onChanged: (value) => setState(() => this.darkmode = value),
                ),
              ),

            ],
          ),
          backgroundColor: darkmode ?Colors.grey[850] : Colors.grey[300],
          body:SingleChildScrollView(
            child:


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,



                children: [

                  const SizedBox(height: 30,),





                  Center(
                    child: Container(
                      width: 300,
                      height: 300,

                      child: AnalogClock(
                        decoration: BoxDecoration(

                            color: Colors.transparent,
                            shape: BoxShape.circle),

                        isLive: true,
                        hourHandColor: Colors.red,
                        minuteHandColor:darkmode ?Colors.white : Colors.grey,
                        showSecondHand: true,
                        secondHandColor:Colors.blue,
                        numberColor:darkmode ?Colors.white : Colors.grey,
                        showNumbers: true,
                        textScaleFactor: 1.4,
                        showTicks: true,
                        showDigitalClock: true,
                        digitalClockColor:darkmode ?Colors.white : Colors.grey,


                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: darkmode ?Colors.grey[850] : Colors.grey[300],

                          boxShadow: [
                            BoxShadow(
                              color: darkmode ?Colors.grey.shade900 : Colors.grey.shade500,
                              offset: Offset(5.0,5.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: darkmode ?Colors.grey.shade800 : Colors.white,
                              offset: Offset(-5.0,5.0),
                              blurRadius: 15.0,
                              spreadRadius: 1.0,
                            ),



                          ]

                      ),
                    ),
                  ),
                 const  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration:effect.BoxDecoration(

                        color: darkmode ?Colors.grey[850] : Colors.grey[300],

                        boxShadow: [
                          effect.BoxShadow(
                            color: darkmode ?Colors.grey.shade900 : Colors.grey.shade500,
                            offset: Offset(2,2),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                            inset: true
                          ),
                          effect.BoxShadow(
                            color: darkmode ?Colors.grey.shade900 : Colors.white,
                            offset: Offset(-5.0,5.0),
                            blurRadius: 10.0,
                            spreadRadius: 1.0,
                            inset: true
                          ),



                        ]

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("08:00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 20),),
                        Switch(
                          activeColor: Colors.indigo.shade300,

                            inactiveThumbColor: Colors.grey.shade500,
                            inactiveTrackColor:Colors.grey.shade400,


                            value: _switch, onChanged: (value){
                          setState(() {
                            _switch=value;
                          });

                        })
                      ],),
                    ),

                  ),
                  const  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration:effect.BoxDecoration(

                        color: darkmode ?Colors.grey[850] : Colors.grey[300],

                        boxShadow: [
                          effect.BoxShadow(
                              color: darkmode ?Colors.grey.shade900 : Colors.grey.shade500,
                              offset: Offset(2,2),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                              inset: true
                          ),
                          effect.BoxShadow(
                              color: darkmode ?Colors.grey.shade900 : Colors.white,
                              offset: Offset(-5.0,5.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                              inset: true
                          ),



                        ]

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("09:00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 20),),
                          Switch(
                              activeColor: Colors.indigo.shade300,

                              inactiveThumbColor: Colors.grey.shade500,
                              inactiveTrackColor:Colors.grey.shade400,


                              value: _switch, onChanged: (value){
                            setState(() {
                              _switch=value;
                            });

                          })
                        ],),
                    ),

                  ),
                  const  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration:effect.BoxDecoration(

                        color: darkmode ?Colors.grey[850] : Colors.grey[300],

                        boxShadow: [
                          effect.BoxShadow(
                              color: darkmode ?Colors.grey.shade900 : Colors.grey.shade500,
                              offset: Offset(2,2),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                              inset: true
                          ),
                          effect.BoxShadow(
                              color: darkmode ?Colors.grey.shade900 : Colors.white,
                              offset: Offset(-5.0,5.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                              inset: true
                          ),



                        ]

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("10:00",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 20),),
                          Switch(
                              activeColor: Colors.indigo.shade300,

                              inactiveThumbColor: Colors.grey.shade500,
                              inactiveTrackColor:Colors.grey.shade400,


                              value: _switch, onChanged: (value){
                            setState(() {
                              _switch=value;
                            });

                          })
                        ],),
                    ),

                  )





                ],

              ),
            ),
          )


      ),
    );
  }
}