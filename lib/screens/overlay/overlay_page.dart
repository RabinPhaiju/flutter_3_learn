import 'package:flutter/material.dart';

class OverlayPage extends StatefulWidget {
  const OverlayPage({super.key});

  @override
  State<OverlayPage> createState() => _OverlayPageState();
}

class _OverlayPageState extends State<OverlayPage> {

  void showOverlay1(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (context){
      return Positioned(
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Overlay'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){ showOverlay1(context);},
                child: const Text('Overlay1')
            )
          ],
        ),
      ),
    );
  }
}
