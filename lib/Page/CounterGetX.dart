import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/Controller/counter_controller.dart';

class CounterGetXPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorial'),
      ),
      body: Container(
        child: Center(
            child: GetX<CounterController>(
              init: CounterController(),
                  builder: (controller)=> Text(
                'Angka ${controller.counter.value.angka}',
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
              onPressed: () => Get.find<CounterController>().increament(),
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () => Get.find<CounterController>().decreament(),
            ),
          ],
        ),
      ),
    );
  }
}
