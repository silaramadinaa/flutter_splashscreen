import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:flutter_splashscreen/services/petugas_services.dart';

import '../models/petugas_model.dart';

class PetugasController extends GetxController {
  var petugasList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPetugasData();
  }

  void fetchPetugasData() async {
    try {
      isLoading(true);
      var petugas = await PetugasService.fetchPetugasData();
      petugasList.value = petugas.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}