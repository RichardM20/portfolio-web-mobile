import 'package:get/get.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class ResponsiveController extends GetxController {
  static ResponsiveController get to => Get.find<ResponsiveController>();

  void updateFontSize(double screenWidth) {
    if (screenWidth > 1000) {
      FontStyles.paragraphSize.value = 20;
      FontStyles.subtitleSize.value = 35;
      FontStyles.titleSize.value = 50;
    } else {
      FontStyles.paragraphSize.value = 12;
      FontStyles.titleSize.value = 25;
      FontStyles.navbarTextActionSize.value = 10;
    }
  }
}
