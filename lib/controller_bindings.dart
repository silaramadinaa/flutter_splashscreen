import 'package:get/instance_manager.dart';

// import 'controllers/album_controller.dart';
//import 'controllers/user_controller.dart';
import 'controllers/petugas_controller.dart';
import 'controllers/anggota_controller.dart';
import 'controllers/buku_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put<AlbumController>(AlbumController());
    // Get.put<UserController>(UserController());
    Get.put<PetugasController>(PetugasController());
    Get.put<AnggotaController>(AnggotaController());
    Get.put<BukuController>(BukuController());
  }
}
