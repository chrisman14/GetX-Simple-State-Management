import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  final c = Get.find<CounterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
      ),
      body: Container(
        child: Center(
            child: Obx(
          () => Text(
            'Angka ${c.counter.value.angka}',
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
              onPressed: () => c.increament(),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () => c.decreament(),
            ),
          ],
        ),
      ),
    );
  }
}
