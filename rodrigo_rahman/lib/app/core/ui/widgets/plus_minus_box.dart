import 'package:flutter/material.dart';
import 'package:rodrigo_rahman/app/core/ui/formatter_helper.dart';
<<<<<<< HEAD
import 'package:rodrigo_rahman/app/modules/menu/widgets/vakinha_rounded_button.dart';
=======
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_rounded_button.dart';
>>>>>>> 9a3f33f1877ca55a5ac745fd9c3f02b303e77d15

class PlusMinusBox extends StatelessWidget {
  final bool elevated;
  final Color? backgroudColor;
  final String? label;
  final int quantity;
  final double price;
  final VoidCallback minusCallback;
  final VoidCallback plusCallback;
  final bool calculateTotal;

  const PlusMinusBox({
    Key? key,
    this.elevated = false,
    this.backgroudColor,
    this.label,
    required this.quantity,
    required this.price,
    required this.minusCallback,
    required this.plusCallback,
    this.calculateTotal = false,
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
<<<<<<< HEAD
          mainAxisAlignment: MainAxisAlignment.center,
=======
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
>>>>>>> 9a3f33f1877ca55a5ac745fd9c3f02b303e77d15
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: label != null,
              child: Text(
                label ?? '',
                style: const TextStyle(fontSize: 15),
                overflow: TextOverflow.ellipsis,
<<<<<<< HEAD
              ),
            ),
            Row(
              children: [
                VakinhaRoundedButton(onPressed: minusCallback, label: '-'),
                Text('$quantity'),
                VakinhaRoundedButton(onPressed: plusCallback, label: '+'),
              ],
            ),
            Visibility(visible: label == null, child: const Spacer()),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 10),
              constraints: const BoxConstraints(minWidth: 70),
              child: Text(
                FormatterHelper.formatCurrency(
                  calculateTotal ? price * quantity : price,
                ),
              ),
            ),
=======
              ),
            ),
            Row(
              children: [
                VakinhaRoundedButton(
                  onPressed: minusCallback,
                  label: '-',
                ),
                Text('$quantity'),
                VakinhaRoundedButton(
                  onPressed: plusCallback,
                  label: '+',
                ),
              ],
            ),
            Visibility(
              visible: label == null,
              child: const Spacer(),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              constraints: const BoxConstraints(
                minWidth: 70,
              ),
              child: Text(
                FormatterHelper.formatCurrency(
                  calculateTotal ? price * quantity : price,
                ),
              ),
            )
>>>>>>> 9a3f33f1877ca55a5ac745fd9c3f02b303e77d15
          ],
        ),
      ),
    );
  }
}
