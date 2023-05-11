

import 'package:flutter/material.dart';
import 'package:mobile_app_gofit_0541/Components/component_1.dart';
import 'package:mobile_app_gofit_0541/Config/theme_config.dart';

//* HomePageInstruktur
class HomePageInstruktur extends StatelessWidget {
  const HomePageInstruktur({super.key});
  @override
  Widget build(BuildContext context) {
  final widthBox = MediaQuery.of(context).size.width * 0.9;
  final heightBox = MediaQuery.of(context).size.height * 0.3;
    return  Scaffold(
      appBar: createAppBar('Welcome Instructure'), 
      body: ListView(
        children:
        [
        const HeaderTemplate(message: 'Selamat Datang Instruktur',),
        menuInstruktur(widthBox, heightBox),
      ]
      ),
      drawer: const SideBar(),
    );
  }

  Center menuInstruktur(double widthBox, double heightBox) {
    return Center(
        child: Container(
          width: widthBox,
          height: heightBox,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorApp.colorPrimary,
              width: 4,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:  [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.mail),tooltip: 'Ijin',),
                      const Text('Ijin')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.history),tooltip: 'Izin Instruktur',),
                      const Text('Riwayat Ijin')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.check_box_outlined),tooltip: 'Izin Instruktur',),
                      const Text('Presensi Kelas')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}