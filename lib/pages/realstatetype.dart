import 'package:flutter/material.dart';

import '../utils/theme.dart';
import 'propertyrent.dart';
import 'propertysell.dart';

class Realstatetype extends StatelessWidget {
  Realstatetype({super.key});

  List btnlist = [
    {
      'img': 'assets/icon 1.png',
      'title': 'Documents For Sell ',
      'onClick': const Propertysell(),
    },
    {
      'img': 'assets/icon 3.png',
      'title': 'Documents For Rent',
      'onClick': const Propertyrent(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
        title: const Text(
          'Real State',
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
          padding: const EdgeInsets.only(top: 20.0),
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
                            horizontal: 8.0, vertical: 12),
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
