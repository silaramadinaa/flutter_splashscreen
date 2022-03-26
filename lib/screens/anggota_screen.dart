import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/anggota_controller.dart';

class AnggotaScreen extends StatelessWidget {
  const AnggotaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AnggotaController anggotacontroller = Get.put(AnggotaController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Obx(
        () => anggotacontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: anggotacontroller.anggotaList.length,
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
                            Text(anggotacontroller
                                .anggotaList[index].kodeAnggota
                                .toString()),
                            Text(anggotacontroller
                                .anggotaList[index].namaAnggota
                                .toString()),
                            Text(anggotacontroller
                                .anggotaList[index].jkAnggota
                                .toString()),
                            Text(anggotacontroller
                                .anggotaList[index].jurusanAnggota
                                .toString()),
                            Text(anggotacontroller
                                .anggotaList[index].noTelpAnggota
                                .toString()), 
                            Text(anggotacontroller
                                .anggotaList[index].alamatAnggota
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
