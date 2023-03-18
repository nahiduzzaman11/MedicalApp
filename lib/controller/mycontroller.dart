import 'package:get/get.dart';
import 'package:medical_app/model/datalist.dart';


class MyController extends GetxController{

  List<DataList> select= [];

  addToCart(DataList p){
    select.add(p);
    update();
  }
  removeFromCart(int index){
    select.removeAt(index);
    update();
  }
}