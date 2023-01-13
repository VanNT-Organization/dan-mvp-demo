import 'package:flutter/material.dart';

import '../../configs/config.dart';

class MyCheckBox extends StatefulWidget {
  final String? title;
  final bool isChecked;
  final Function(bool value) onPress;

  const MyCheckBox(
      {Key? key, this.title, required this.onPress, required this.isChecked})
      : super(key: key);

  @override
  MyCheckBoxState createState() => MyCheckBoxState();
}

class MyCheckBoxState extends State<MyCheckBox> {
  bool _isCheck = false;
  @override
  void initState() {
    super.initState();
    _isCheck = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              setState(() {
                _isCheck = !_isCheck;
                widget.onPress(widget.isChecked);
              });
            },
            icon: Container(
                decoration: BoxDecoration(
                  color: _isCheck ? Palette.blue : Colors.white,
                  border: Border.all(color: Palette.black),
                  borderRadius: AppTheme.borderRadius(3)
                ),
                child: const Icon(Icons.check, size: 18, color: Colors.white))),
        Box.w(8),
        Text(widget.title ?? '', style: AppFont.t.s(15))
      ],
    );
  }
}
