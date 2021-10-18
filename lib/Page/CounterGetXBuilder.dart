import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/counter_controller.dart';

class CounterGetXBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
      ),
      body: Container(
        child: Center(
            child: GetBuilder<CounterController>(
              init: CounterController(),
              builder: (controller)=> Text(
                'Angka ${controller.counter_1}',
                style: TextStyle(fontSize: 50),
              ),
            )),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(left: 30),
        child: Row(
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () =>Get.find<CounterController>().increament_1(),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () => Get.find<CounterController>().decreament_1(),
            ),
          ],
        ),
      ),
    );
  }
}
