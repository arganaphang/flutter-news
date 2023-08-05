import 'package:get/get.dart';
import 'package:hello/entity/news.dart';
import 'package:hello/network/get_news.dart';

class HomePageController extends GetxController {
  final list = <News>[].obs;
  final isLoading = false.obs;

  @override
  onInit() async {
    super.onInit();
    onChange("nasional");
  }

  void onChange(String prefix) async {
    isLoading.value = true;
    update();
    list.value = await getnews(prefix);
    isLoading.value = false;
    update();
  }
}
