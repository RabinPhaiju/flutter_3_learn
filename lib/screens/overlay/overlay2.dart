import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Overlay2 extends StatefulWidget {
  const Overlay2({super.key});

  @override
  State<Overlay2> createState() => _Overlay2State();
}

class _Overlay2State extends State<Overlay2> {
  final mywidgetkey = GlobalKey();
  ScrollController scrollController = ScrollController();
  bool isTop = false;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
      scrollController.addListener(() {
        RenderBox renderbox = mywidgetkey.currentContext!.findRenderObject() as RenderBox;
        Offset position = renderbox.localToGlobal(Offset.zero);
        double screenHeight = MediaQuery.of(context).size.height;
        double x = position.dx;
        double y = position.dy;
        setState(() {
          if(y<300){ isTop = false; }
          else if(y>300){ isTop = true; }
        });
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Overlay2'),),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            Stack(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        key:mywidgetkey,
                        onPressed: () async {
                          RenderBox renderbox = mywidgetkey.currentContext!.findRenderObject() as RenderBox;
                          Offset position = renderbox.localToGlobal(Offset.zero);
                          double x = position.dx;
                          double y = position.dy;
//Top left Corner
                          print('x: $x'); //20.0
                          print('y: $y'); //112.36363636363637
                          print('screen height: ${MediaQuery.of(context).size.height}');
//                     double width = renderbox.size.width;
//                     double height = renderbox.size.height;

//                     print(width); //352.72727272727275
//                     print(height); //100.0

//                     //top right corner
//                     print(x + width); //372.72727272727275
//                     print(y); //112.36363636363637

//                     //bottom left corner
//                     print(x); //20.0
//                     print(y + height); //212.36363636363637

//                      //bottom right corner
//                     print(x + width); //372.72727272727275
//                     print(y + height); //212.36363636363637

                        },
                        child: Text("Get X and Y Positon of Container")
                    ),
                  ),
                  isTop? Positioned(
                      top: 0,
                      left: 0,
                      child:Text('Top')
                  ):
                  Positioned(
                      bottom:0,
                      left:0,
                      child:Text('bottom')
                  )
                ]
            ),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
            SizedBox(height: 20,child: Text('Hello'),),
          ],
        ),
      ),
    );
  }
}
