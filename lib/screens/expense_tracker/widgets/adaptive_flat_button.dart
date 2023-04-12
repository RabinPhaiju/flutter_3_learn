import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  const AdaptiveFlatButton(this.text,this.handler, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Platform.isIOS ?
      CupertinoButton(
        onPressed: handler,
        child:  Text(text))
        : ElevatedButton(
        onPressed: handler,
        child: Text(text)
    );
  }
}
