import 'package:flutter/material.dart';
import 'package:rodrigo_rahman/app/core/ui/vakinha_ui.dart';
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_button.dart';
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_textformfield.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VakinhaAppbar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (_, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: context.textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.theme.primaryColorDark,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      VakinhaTextformfield(label: 'E-mail'),
                      const SizedBox(
                        height: 30,
                      ),
                      VakinhaTextformfield(label: 'senha'),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: VakinhaButton(
                          width: context.width,
                          onPressed: () {},
                          label: 'ENTRAR',
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Não possui uma conta?',
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Cadastre-se',
                              style: VakinhaUI.textBold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}