import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/buku_controller.dart';

class BukuScreen extends StatelessWidget {
  const BukuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BukuController bukucontroller = Get.put(BukuController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Obx(
        () => bukucontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: bukucontroller.bukuList.length,
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
                            Text(bukucontroller
                                .bukuList[index].kodeBuku
                                .toString()),
                            Text(bukucontroller
                                .bukuList[index].judulBuku
                                .toString()),
                            Text(bukucontroller
                                .bukuList[index].isbn
                                .toString()),
                            Text(bukucontroller
                                .bukuList[index].penulisBuku
                                .toString()),
                            Text(bukucontroller
                                .bukuList[index].penerbitBuku
                                .toString()), 
                            Text(bukucontroller
                                .bukuList[index].stok
                                .toString()),
                            Text(bukucontroller
                                .bukuList[index].cover
                                .toString()),  
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
