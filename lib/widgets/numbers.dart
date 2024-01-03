import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  String text;
  Color ?color;
  VoidCallback?onpressed;
   MyWidget({Key? key,required this.text,required this.color,required this.onpressed}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onpressed,
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
          child: Center(child: Text(widget.text,style: TextStyle(fontSize: 20),)),
        ),
      ),
    );
  }
}
