import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

class AuthController extends GetxController {
  var _localAuth = LocalAuthentication();
  var hasFingerPrintLock = false.obs;
  var hasFaceLock = false.obs;
  var isUserAuthenticated = false.obs;

  void _getAllBiometrics() async {
    bool hasLocalAuthentication = await _localAuth.canCheckBiometrics;
    if (hasLocalAuthentication) {
      List<BiometricType> availableBiometrics =
          await _localAuth.getAvailableBiometrics();
      hasFingerPrintLock.value =
          availableBiometrics.contains(BiometricType.face);
    } else {
      showSnackBar(
        message: "Local Authentication not available",
        backgroundColor: Colors.red,
        title: 'Error',
      );
    }
  }

  void showSnackBar(
      {required String title,
      required String message,
      required Color backgroundColor}) {
    Get.snackbar(title, message,
        colorText: Colors.white,
        backgroundColor: backgroundColor,
        snackPosition: SnackPosition.BOTTOM);
  }

  @override
  void onInit() {
    super.onInit();
    _getAllBiometrics();
  }
    @override
    void onClose(){}

    void authenticateUser()async{
      try {
        const androidMessage = const AndroidAuthMessages(
cancelButton: 'Cancel',
goToSettingsButton: 'settings',
goToSettingsDescription: 'FPlease set up your FingerPrint/Face',
biometricHint: 'Verify your identity',
        );isUserAuthenticated.value = await _localAuth.authenticate(localizedReason: "Authenticate Yourself",biometricOnly: true,useErrorDialogs: true,stickyAuth: true,androidAuthStrings: androidMessage);
        if (isUserAuthenticated.value) {
          showSnackBar(title: "Success", message: "You are authenticated", backgroundColor: Colors.green);
          
        }else{
          showSnackBar(title: "Error", message:"Authenticated Cancelled" , backgroundColor: Colors.red);

        }
      
      }catch(e){
          showSnackBar(title: "Error", message:e.toString(), backgroundColor: Colors.red);

      }
    }
}
