import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rodrigo_rahman/app/core/ui/formatter_helper.dart';
import 'package:rodrigo_rahman/app/core/ui/vakinha_ui.dart';
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_button.dart';
import '../../core/ui/widgets/plus_minus_box.dart';
import './product_detail_controller.dart';

class ProductDetailPage extends GetView<ProductDetailController> {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(),
      body: LayoutBuilder(builder: (_, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxHeight,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: context.width,
                  height: context.heightTransformer(
                    reducedBy: 60,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://lh3.googleusercontent.com/ItIvM56EJYye3AwFqfXIlh_8B-KXcQggTQ7riMq40job9gDs8tj8nPiN-ed1lxdA6N-TadV5hJeujC9_=w1080-h608-p-no-v0'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'X-TUDÃO',
                    style: context.textTheme.headline4!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'X-TUDÃO',
                    style: context.textTheme.bodyText2!,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                PlusMinusBox(
                  label: 'X-TUDAO',
                  backgroudColor: Colors.pink,),
                const Divider(),
                ListTile(
                  title: const Text(
                    'Total',
                    style: VakinhaUI.textBold,
                  ),
                  trailing: Text(
                    FormatterHelper.formatCurrency(200),
                    style: VakinhaUI.textBold,
                  ),
                ),
                const SizedBox(
                   height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: context.widthTransformer(reducedBy: 10),
                    child: VakinhaButton(
                      onPressed: () {},
                      label: 'ADICIONAR',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
