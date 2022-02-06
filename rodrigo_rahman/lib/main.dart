import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rodrigo_rahman/app/core/bindings/applications_bindings.dart';
import 'package:rodrigo_rahman/app/core/ui/vakinha_ui.dart';
import 'package:rodrigo_rahman/app/routes/auth_routers.dart';
import 'package:rodrigo_rahman/app/routes/home_routers.dart';
import 'package:rodrigo_rahman/app/routes/product_routers.dart';
import 'package:rodrigo_rahman/app/routes/splash_routers.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const VakinhaBurguerMainApp());
}

class VakinhaBurguerMainApp extends StatelessWidget {
  const VakinhaBurguerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vakinha Burguer',
      initialBinding: ApplicationsBindings(),
      theme: VakinhaUI.theme,
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
        ...HomeRouters.routers,
        ...ProductRouters.routers,
      ],
    );
  }
}
