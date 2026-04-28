import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

@pragma('vm:entry-point')
Future<void>_firebasebackgroundMessagingHandler(RemoteMessage message)async{
  await Firebase.initializeApp();
}
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
FirebaseMessaging.onBackgroundMessage(_firebasebackgroundMessagingHandler);
 
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
