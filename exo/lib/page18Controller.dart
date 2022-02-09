import 'package:exo/userProviderPage18.dart';
import 'package:get/get.dart';

class Page18Controller extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    super.onInit();
    UserProviderPage18().getUser().then((resp) {
      change(resp, status: RxStatus.success());
    },onError: (err){
      change(null,status: RxStatus.error(err.toString()));
    }
    );
  }
}
