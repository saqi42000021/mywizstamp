import 'package:flutter/material.dart';

import '../../utils/theme.dart';

class Olddoc extends StatelessWidget {
  Olddoc({super.key});
  List btnlist = [
    {
      'img': 'assets/icon 2.png',
      'title': 'Real State Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Car sell Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Accessories Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Livestock Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
    {
      'img': 'assets/icon 2.png',
      'title': 'Goods Documents',
      'sub': '12/05/2023',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
        title: const Text(
          'Old Documents',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: ThemeColors.primaryColor,
      ),
      //
      //
      ///
      /////
      /////
      /////
      ///
      ///
      ///
      body: SingleChildScrollView(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, right: 10, left: 10),
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
                            horizontal: 7.0, vertical: 7),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(6),
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => btnlist['sub':'1'                ),
                          //   );
                          // },
                          tileColor: Colors.white,
                          trailing: index.isEven
                              ? const Icon(Icons.lock)
                              : const Icon(Icons.edit),
                          subtitle: Text(btnlist[index]['sub']),
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
