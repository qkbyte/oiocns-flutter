
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orginone/page/home/message/message_controller.dart';

class CzhController extends GetxController {
  String currentRelationId = '';
  TextEditingController searchGroupTextController = TextEditingController();
  MessageController messageController = Get.find<MessageController>();
  var textField1 = 1.obs;
  var textField2 = 2.obs;
  //关系对象,估计用接口或长链接hubUtil下的方法获取
  var relationObj = {
  }.obs;
  //接收关系对象下的成员列表
  RxList<String> originPersonList = <String>['测试1','测试2','测试3'].obs;
  //筛选过后的成员列表，不填值会报错
  RxList<String> filterPersonList = <String>[].obs;
  void test1(a) {
    textField1.value = a;
  }
  @override
  void onInit() async {
    await getRelationData();
    //初始化
    for(String person in originPersonList) {
      filterPersonList.add(person);
    }
    super.onInit();
  }
  //查询成员
  searchPerson() {
    filterPersonList = originPersonList.where((e) => e == searchGroupTextController.text).toList().obs;
  }
  //获取人或集团的信息
  Future<dynamic> getRelationData() async {
    // 根据currentRelationId获取关系信息
    // Map<String, dynamic> chats = await HubUtil().getChats();
    // 转化为api的格式
    // ApiResp apiResp = ApiResp.fromMap(chats);
    // 存入对应
    // relationObj = relationResp.data
  }
}