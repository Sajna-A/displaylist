import 'package:get/get.dart';
import 'package:zylentrix_intern/service/list_service.dart';

class ListController extends GetxController {
  Future<List<dynamic>> fetchList() async {
    try {
      final response = await ListService().getList();
      if (response.hasError) {
        Get.snackbar("Error", response.statusText.toString());
      return [];
      } else {
        return response.body;
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
      return [];
    }
  }
}
