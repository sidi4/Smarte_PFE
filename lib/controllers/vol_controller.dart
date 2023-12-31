
import 'package:get/get.dart';
import 'package:volsapp/m/Vol.dart';

class HotelController extends GetxController {


  List<Vols> hotels = [];
  var isLoading = true.obs;

  setIsLoadingHotels(bool newValue) {
    isLoading.value = newValue;
  }

  addHotel(Vols vol) {
    hotels.add(vol);
  }
}