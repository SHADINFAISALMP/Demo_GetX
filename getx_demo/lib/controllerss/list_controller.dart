import 'package:get/get.dart';

class ListController extends GetxController {
  final RxList _list = [].obs;

  RxList get list => _list;

  void setvalues(int x) {
    _list.add(x);
    print(_list);
  }
}
