import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_get/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //build 내에서 controller type의 변수를 선언해서 instance를 넣어줍니다
    //Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //data type선언해줘야한다 controller instance x를 불러온다
            GetBuilder<Controller>(
              init: Controller(),
              builder: (_) => Text(
                // 'Current value is : ${controller.x}',
                'Current value is : ${Get.find<Controller>().x}',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text('Add Number'),
            ),
          ],
        ),
      ),
    );
  }
}
