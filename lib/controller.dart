import 'package:get/get.dart';

class Controller extends GetxController {
  //_x는 private로 선언했기 때문에 get을 가져와서 외부에서 사용할 수 있게 한다.
  int _x = 0;
  int get x => _x;

  void increment() {
    _x++;
    update();
  }
}
