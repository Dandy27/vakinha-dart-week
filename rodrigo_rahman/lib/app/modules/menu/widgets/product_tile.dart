import 'package:flutter/material.dart';
import 'package:rodrigo_rahman/app/core/ui/vakinha_ui.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 80,
        child: Row(
          children: [
            Container(
              width: 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.tcdn.com.br/img/img_prod/584235/licor_43_diego_zamora_cuarenta_y_tres_700_ml_438983486_1_fb9e3d978abc6d123b65a770457d307f.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      ' Licor 43',
                      style: VakinhaUI.textBold,
                    ),
                    Text(
                      r'R$ 200,00,',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
