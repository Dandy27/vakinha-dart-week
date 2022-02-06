import 'package:flutter/material.dart';

class PlusMinusBox extends StatelessWidget {
  final bool elevated;
  final Color? backgroudColor;
  final String? label;

  const PlusMinusBox({
    Key? key,
    this.elevated = false,
    this.backgroudColor,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevated ? 5 : 0,
      borderRadius: BorderRadius.circular(20),
      shadowColor: Colors.black26,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroudColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Visibility(
              visible: label != null,
              child: Text(label ?? '',
              style:  const TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
              ),
            ),
            Row()
          ],
        ),
      ),
    );
  }
}
