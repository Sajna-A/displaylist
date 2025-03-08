import 'package:get/get.dart';

class ListService extends GetConnect {
  Future<Response> getList() async {
    return await get('https://jsonplaceholder.typicode.com/posts');
  }
}