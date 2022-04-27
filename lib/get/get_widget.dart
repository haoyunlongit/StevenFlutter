import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'get_controller.dart';

class getWidget extends StatelessWidget {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
     return Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           GetBuilder<Controller>(
               builder: (_) => Text(
                 'clicks: ${controller.count}',
               )),
           ElevatedButton(
             child: Text('Next Route'),
             onPressed: () {
               Get.to(Second());
             },
           ),
           GestureDetector(
             child: Container(
                height: 200,
               width: 200,
               color: Colors.blue,
             ),
             onTap: () => controller.increment(),
           )
         ],
       )
     );
  }
}

class Second extends StatelessWidget {
  final Controller ctrl = Get.find();
  @override
  Widget build(context){
    return Scaffold(body: Center(child: Text("${ctrl.count}")));
  }
}