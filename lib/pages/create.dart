import 'package:flutter/material.dart';
import 'package:wizstamp/utils/theme.dart';

import 'vehicle.dart';
import 'electronic.dart';
// import 'livestock.dart';
// import 'good.dart';
import 'realstatetype.dart';

class Create extends StatelessWidget {
  Create({super.key});

  List btnlist = [
    {
      'img': 'assets/icon 1.png',
      'title': 'Real State Documents',
      'onClick': Realstatetype(),
    },
    {
      'img': 'assets/icon 3.png',
      'title': 'Motor Vehicle Documents',
      'onClick': const Carsell(),
    },
    {
      'img': 'assets/icon 1.png',
      'title': 'Electronic Accessories Documents',
      'onClick': const Electronic(),
    },
    // {
    //   'img': 'assets/icon 3.png',
    //   'title': 'Livestock Documents',
    //   'onClick': const Livestock(),
    // },
    // {
    //   'img': 'assets/icon 2.png',
    //   'title': 'Goods Documents',
    //   'onClick': const Goods(),
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
        title: const Text(
          'Create Documents',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 94, 2, 254),
      ),
      //
      //
      //
      //
      body: SingleChildScrollView(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0, right: 10, left: 10),
          child: Column(
            children: [
              ListView.builder(
                controller: ScrollController(),
                shrinkWrap: true,
                itemCount: btnlist.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(20),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => btnlist[index]['onClick'],
                              ),
                            );
                          },
                          tileColor: Colors.white,
                          leading: Image.asset(btnlist[index]['img']),
                          title: Text(btnlist[index]['title']),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
