import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Page/CounterGetX.dart';
import 'package:getx_tutorial/Page/CounterGetXBuilder.dart';
import 'package:getx_tutorial/Page/CounterObx.dart';

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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    "Counter Getx With Obx",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Get.to(CounterObxPage())),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.red,
                  child: Text("Counter Getx With Getx",
                    style: TextStyle(color: Colors.white),),
                  onPressed: () => Get.to(CounterGetXPage())),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                color: Colors.green,
                  child: Text("Counter Getx With GetBuilder",
                    style: TextStyle(color: Colors.white),),
                  onPressed: () => Get.to(CounterGetXBuilderPage())),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.lightbulb_outline),
        onPressed: () => c.changeTheme(),
      ),
    );
  }
}
