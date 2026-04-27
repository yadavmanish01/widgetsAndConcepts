import 'package:flutterwidgetsandconcepts/app/routes/app_pages.dart';
import 'package:flutterwidgetsandconcepts/extension/logger.dart';
import 'package:get/get.dart';
import 'package:flutterwidgetsandconcepts/notificationServices/notificationServices.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  Notificationservices notificationServices = Notificationservices();
  @override
  void onInit() {
    super.onInit();
    notificationServices.RequestNotficationPermission();
    notificationServices.FirebaseInit();
    notificationServices.getDeviceToken().then((value){logger.d("fcm token");
    logger.d(value);});
    Future.delayed(Duration(seconds: 3),()=>Get.offAllNamed(Routes.HOME));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
