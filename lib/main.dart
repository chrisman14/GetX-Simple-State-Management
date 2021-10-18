import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Page/Counter.dart';

import 'Controller/counter_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counterC = Get.put(CounterController());
    return Obx(
      () => GetMaterialApp(
          theme: _counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: Home()),
    );
  }
}

class Home extends StatelessWidget {
  final c = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Tutorial"),
      ),
      body: Column(
        children: [
          RaisedButton(
              child: Text("Simple Counter Getx"),
              onPressed: () => Get.to(CounterPage()))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.lightbulb_outline),
        onPressed: () => c.changeTheme(),
      ),
    );
  }
}
