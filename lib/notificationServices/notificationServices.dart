import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutterwidgetsandconcepts/app/routes/app_pages.dart';
import 'package:flutterwidgetsandconcepts/extension/logger.dart';
import 'package:get/get.dart';

class Notificationservices {
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> RequestNotficationPermission() async {
    NotificationSettings settings = await firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      logger.d("permission granted for notification");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      logger.d("provisional permission granted");
    } else {
      logger.e("permission denied");
    }
  }

  Future<String?> getDeviceToken() async {
    final token = await firebaseMessaging.getToken();
    return token;
  }

  void refreshDeviceToken() {
    firebaseMessaging.onTokenRefresh.listen((newToken) {
      logger.d("New Token: $newToken");
      //update backend here
    });
  }

  void LocalFirebaseInit( RemoteMessage message) async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_notification');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
          requestSoundPermission: false,
          requestBadgePermission: false,
          requestAlertPermission: false,
        );

    InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: (Payload) {
        handleMessage( message);
      },
    );
  }

  void FirebaseInit() {
    FirebaseMessaging.onMessage.listen((message) {
      logger.d(message.notification?.title.toString());
      debugPrint(message.notification?.body.toString());
      showNotification(message);

      LocalFirebaseInit(message);
    });
  }

  void showNotification(RemoteMessage message) {
    AndroidNotificationChannel androidNotificationChannel =
        AndroidNotificationChannel(
          Random.secure().nextInt(1000).toString(),
          "High Importance Notification",
          importance: Importance.max,
        );

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
          androidNotificationChannel.id.toString(),
          androidNotificationChannel.name.toString(),
          channelDescription: "Your channel description",
          priority: Priority.high,
          importance: Importance.high,
          ticker: "ticker",
            icon: 'ic_notification'
        );

    DarwinNotificationDetails darwinNotificationDetails = DarwinNotificationDetails(presentAlert: true,
    presentBadge: true,presentSound: true);

    NotificationDetails notificationDetails = NotificationDetails(
      android:  androidNotificationDetails,
      iOS: darwinNotificationDetails
    );

     Future.delayed(Duration.zero,(){

    _flutterLocalNotificationsPlugin.show(id:0,
    title: message.notification!.title.toString(),
    body: message.notification!.body.toString(),
    notificationDetails: notificationDetails);
     });
  }

  //
void handleMessage(RemoteMessage message){
    if(message.data['type']=='msg'){
      Get.toNamed(Routes.NOTIFICATIONPAGE);
    }
}
}
