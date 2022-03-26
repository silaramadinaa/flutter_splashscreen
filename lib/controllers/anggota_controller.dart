import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:flutter_splashscreen/services/anggota_services.dart';

import '../models/anggota_model.dart';

class AnggotaController extends GetxController {
  var anggotaList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAnggotaData();
  }

  void fetchAnggotaData() async {
    try {
      isLoading(true);
      var anggota = await AnggotaService.fetchAnggotaData();
      anggotaList.value = anggota.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}