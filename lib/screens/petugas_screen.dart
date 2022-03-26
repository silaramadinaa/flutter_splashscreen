import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/petugas_controller.dart';

class PetugasScreen extends StatelessWidget {
  const PetugasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PetugasController petugascontroller = Get.put(PetugasController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Obx(
        () => petugascontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: petugascontroller.petugasList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 400,
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10, top: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.brown, Colors.brown.shade400]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(petugascontroller
                                .petugasList[index].namaPetugas
                                .toString()),
                            Text(petugascontroller
                                .petugasList[index].jabatanPetugas
                                .toString()),
                            Text(petugascontroller
                                .petugasList[index].noTelpPetugas
                                .toString()),
                            Text(petugascontroller
                                .petugasList[index].alamatPetugas
                                .toString())
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
