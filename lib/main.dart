import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:tugas2_putri/auth/login/controllers/login_controller.dart';
import 'package:tugas2_putri/auth/register/controllers/register_controller.dart';
import 'package:tugas2_putri/firebase_options.dart';
import 'package:tugas2_putri/repository/auth_repository.dart';
import 'package:tugas2_putri/repository/user_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthRepository()));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //controllers
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => RegisterController(), fenix: true);

    //repo
    Get.lazyPut(() => UserRepository(), fenix: true);

    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(child: CircularProgressIndicator()));
  }
}
