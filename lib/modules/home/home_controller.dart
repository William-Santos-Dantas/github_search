import 'package:get/get.dart';
import '../../application/ui/loader/loader_mixin.dart';
import '../../application/ui/messages/messages_mixin.dart';

class HomeController extends GetxController with LoaderMixin, MessagesMixin {
  final loading = false.obs;
  final message = Rxn<MessageModel>();
  final _text = ''.obs;
  get text => _text.value;

  HomeController();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  void comparePrice({
    required String firstProduct,
    required double firstPrice,
    required double secondPrice,
    required String secondProduct,
    required double firstQuantity,
    required double secondQuantity,
  }) {
    double firstPriceML = firstPrice / firstQuantity;
    double secondPriceML = secondPrice / secondQuantity;
    double diference = 0;
    if (firstPriceML < secondPriceML) {
      diference = secondPriceML - firstPriceML;
      _text(
          'Você tem uma economia de $diference por litro comprando o $firstProduct');
    } else {
      diference = firstPriceML - secondPriceML;
      _text(
          'economia de R\$${diference.toStringAsPrecision(2)} por litro comprando $secondProduct');
    }
  }
}
