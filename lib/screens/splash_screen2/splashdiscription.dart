
import 'package:flutter/material.dart';

class SplashDiscription extends StatelessWidget {
  final int number;
  final String title;
  const SplashDiscription({super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:32,
            width:32,
            child: Image.asset('assets/images/leaf1.png',height: 25, width: 26,fit: BoxFit.fitHeight),
          ),
          const SizedBox(
            width: 2,
          ),
           Column(
            children: [
              Text(
                number>0?'$number +':'',
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            width: 2,
          ),
          SizedBox(
            height:32,
            width:32,
            child: Image.asset('assets/images/leaf3.png',height: 25, width: 26,fit: BoxFit.fitHeight),
          ),
        ],
      ),
    );
  }
}
