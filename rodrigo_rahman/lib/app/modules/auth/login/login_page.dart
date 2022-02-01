import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:get/route_manager.dart';
import 'package:rodrigo_rahman/app/core/ui/vakinha_ui.dart';
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_appbar.dart';
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_button.dart';
import 'package:rodrigo_rahman/app/core/ui/widgets/vakinha_textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: VakinhaAppbar(
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cadastro',
                      style: context.textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.primaryColorDark,
                      ),
                    ),
                    Text(
                      'Prencha os campos abaixo co para criar o seu cadastro',
                      style: context.textTheme.bodyText1?.copyWith(
                       

                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    VakinhaTextformfield(label: 'Nome'),
                    const SizedBox(
                      height: 30,
                    ),
                    VakinhaTextformfield(label: 'E-mail'),
                    const SizedBox(
                      height: 30,
                    ), 
                    VakinhaTextformfield(label: 'senha'),
                    const SizedBox(
                      height: 30,
                    ),
                    VakinhaTextformfield(label: 'Corfirma Senha'),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: VakinhaButton(
                        width: context.width,
                        onPressed: () {},
                        label: 'Cadastrar',
                      ),
                    ),
                  
                 
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
