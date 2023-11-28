import 'package:flutter/material.dart';

import 'overlay2.dart';

class OverlayPage extends StatefulWidget {
  const OverlayPage({super.key});

  @override
  State<OverlayPage> createState() => _OverlayPageState();
}

class _OverlayPageState extends State<OverlayPage> {
  Offset offset3 = const Offset(100, 100);
  OverlayEntry? overlayEntry3;

  void showOverlay1(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (context){
      return const Positioned(
          top: 55,
          left: 100,
          child: Material(child: Text('Overlay1'))
      );
    },
    );
    overlayState.insert(overlayEntry);
    await Future.delayed(const Duration(seconds: 3));
    overlayEntry.remove();
  }

  void showOverlay3(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    overlayEntry3 = OverlayEntry(builder: (context){
      return Positioned(
          top: offset3.dy,
          left: offset3.dx,
          child: GestureDetector(
            onPanUpdate: (details){
             offset3 +=details.delta;
             // setState(() {}); // dont use this
             overlayEntry3!.markNeedsBuild();
            },
            child: ElevatedButton(onPressed: (){},child: Text('Overlay3 FLoating')),)
      );},
    );
    overlayState.insert(overlayEntry3!);
  }

  void hideOverlay3() {
    overlayEntry3?.remove();
    overlayEntry3 = null;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showOverlay1(context);
    });
  }

  @override
  void dispose() {
    hideOverlay3();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Overlay'),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: (){ showOverlay1(context);},
                  child: const Text('Overlay1')
              ),
              ElevatedButton(
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const Overlay2()));},
                  child: const Text('Overlay2')
              ),
              ElevatedButton(
                  onPressed: (){ showOverlay3(context); },
                  child: const Text('Start Overlay3')
              ),
              ElevatedButton(
                  onPressed: (){ hideOverlay3(); },
                  child: const Text('Stop Overlay3')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
