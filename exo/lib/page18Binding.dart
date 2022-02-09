import 'package:exo/page18Controller.dart';
import 'package:get/get.dart';

class Page18Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page18Controller>(() => Page18Controller());
  }
}
