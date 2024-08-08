import 'package:flutter/material.dart';

class Overlay4 extends StatefulWidget {
  const Overlay4({super.key});

  @override
  State<Overlay4> createState() => _Overlay4State();
}

class _Overlay4State extends State<Overlay4> with TickerProviderStateMixin {
  AnimationController? animationController;
  List animations = [];

  @override
  void initState() {
    animationController = AnimationController(vsync: this,
      duration: const Duration(seconds: 3),
    );
    animationController?.addListener(() {
      setState(() {});
      for(int i=3;i> 0;i--){
        animations.add(
          Tween(begin: 0.0,end: 1.0).animate(
            CurvedAnimation(
                parent: animationController!,
                curve: Curves.easeIn),
          ),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Overlay4'),),
      body: const Center(
        child: Text('Hello'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}
