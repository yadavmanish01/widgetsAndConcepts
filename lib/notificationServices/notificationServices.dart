import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutterwidgetsandconcepts/extension/logger.dart';

class Notificationservices {

  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  Future<void> RequestNotficationPermission()async{
    NotificationSettings settings =await firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,carPlay: true,criticalAlert: true,provisional: true
    );
    if(settings.authorizationStatus==AuthorizationStatus.authorized){
      logger.d("permission granted for notification");
    }else if(settings.authorizationStatus ==AuthorizationStatus.provisional){
      logger.d("provisional permission granted");
    }else{
      logger.e("permission denied");
    }
  }

  Future<String?> getDeviceToken()async{
    final token = await firebaseMessaging.getToken();
    return token;
  }

  void refreshDeviceToken() {
    firebaseMessaging.onTokenRefresh.listen((newToken) {
      logger.d("New Token: $newToken");
     //update backend here
    });
  }

  void FirebaseInit(){
    FirebaseMessaging.onMessage.listen((message){
      debugPrint(message.notification?.title.toString());
      debugPrint(message.notification?.body.toString());
    });
  }

  
}