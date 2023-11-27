import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_learn_377/screens/splash_screen2/splashdiscription.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  CenteredIcon()
    );
  }
}

class CenteredIcon extends StatefulWidget {
  const CenteredIcon({super.key});

  @override
  State<CenteredIcon> createState() => _CenteredIconState();
}

class _CenteredIconState extends State<CenteredIcon> {
  //bool _showContainer = false;
  bool isVisible = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() {
        isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00658E),
      body: SafeArea(
        child: Stack(
         children: [
             Align(
               alignment: const Alignment(0.0,0.5),
               child: Animate(
                 effects: const [
                   FadeEffect(delay: Duration(milliseconds: 600))
                 ],
                 child: const Wrap(
                   children: [
                     SplashDiscription(number: 50, title: 'Total User'),
                     SplashDiscription(number: 50, title: 'Total Answered'),
                     SplashDiscription(number: 50, title: 'Users From Countries'),
                     SplashDiscription(number: 0, title: 'Trusted Since 2019'),
                       ],
                 ),
               ),
             ),
           Align(
             alignment: Alignment.center,
             child: Animate(
               effects: const [
                 FadeEffect(duration: Duration(milliseconds: 400)),
                 SlideEffect(begin: Offset(0.0,0.0),end: Offset(0.0,-1),delay: Duration(milliseconds: 400))
               ],
               child: Image.asset('assets/images/PP-Logo.png',height: 110, width: 100,fit: BoxFit.fitHeight,),

             ),
           )
         ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15,right:15,bottom: 20),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 600),
          opacity: isVisible ? 1.0 : 0.0,
          child: ElevatedButton(
              onPressed: () {  },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Get Started",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,color: Colors.blue,),
                ],
              )
          ),
        ),

      ),
    );
  }
}

