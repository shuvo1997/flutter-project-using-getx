import 'package:get/get.dart';

class CounterController extends GetxController {
  //TODO: Implement CounterController

  RxInt count = 0.obs;
  void increment() => count.value++;
}
