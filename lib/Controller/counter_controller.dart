import 'package:get/get.dart';
import 'package:getx_tutorial/Models/counterModel.dart';

class CounterController extends GetxController {
  var counter = CounterModel(angka: 0).obs;
  var isDark = false.obs;
  void changeTheme() => isDark.value = !isDark.value;
  //untuk menggunakan model harus menggunakan update
  void increament() => counter.update((_)=>counter.value.angka++);
  void decreament() => counter.update((_)=>counter.value.angka--);



//for Counter GetX Builder
  var counter_1=0;
  void increament_1(){
    counter_1++;
    update();
  }
  void decreament_1(){
    counter_1--;
    update();
  }
}
