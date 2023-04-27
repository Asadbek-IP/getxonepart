import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxonepart/controller/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // final _homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "${Get.find<HomeController>().count.value}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.find<HomeController>().kamaytirish();
                    },
                    child: Text("-")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.find<HomeController>().oshirish();
                    },
                    child: Text("+")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
