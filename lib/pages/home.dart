import 'package:flutter/material.dart';
import 'package:wizstamp/pages/signup.dart';
import 'package:wizstamp/pages/track.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:wizstamp/utils/theme.dart';

import '../../utils/api.dart';
// import '../create.dart';
import 'brand.dart';
import 'create.dart';
import 'olddoc.dart';

// import '../olddoc.dart';

// import '../signup.dart';
// import '../track.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /////////////
  dynamic dataFromApi = {};
  @override
  void initState() {
    super.initState();
    dataFromApi = Apidata().getdata();
  }

  /////////////
  List btnlist = [
    {
      'icon': 'assets/create.png',
      'title': 'Create Documents',
      'onClick': Create(),
    },
    {
      'icon': 'assets/old.png',
      'title': 'Old Documents',
      'onClick': Olddoc(),
    },
    {
      'icon': 'assets/branding.png',
      'title': 'Branding',
      'onClick': const Brand(),
    },
    {
      'icon': 'assets/track.png',
      'title': 'Track',
      'onClick': const Track(),
    },
  ];

  ///
  ///
  ///
  ///
  ///
  ///

//
//
//
//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
          title: const Text(
            'Wiz Stamp',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: ThemeColors.primaryColor),
      drawer: const Drawerwidget(),
      //
      //
      //
      //
      body: SingleChildScrollView(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),

              //
              //
              //
              //
              ///
              /////
              /////
              /////
              /////
              ///
              //
              //
              ///
              ///
              ///
              ///
              ///
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: 0, left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  // '${dataFromApi['status']} :: ${dataFromApi['data'][0]['id'].toString()}',
                                  // dataFromApi.toString(),
                                  "Well Come",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 150, 144, 144),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Amash",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 62, 57, 57),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Transform.translate(
                          offset: const Offset(15, 1),
                          child: Transform.scale(
                            scaleY: 1.3,
                            child: Image.asset('assets/splash.png',
                                width: MediaQuery.of(context).size.width *
                                    25 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    30 /
                                    100),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(3, 3),
                            blurRadius: 2),
                      ],
                      color: ThemeColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Olddoc(),
                          ),
                        );
                      },
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 13),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      tileColor: ThemeColors.primaryColor,
                      title: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'All Documents',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      trailing: Transform.scale(
                        scale: 1.8,
                        // scaleX: 2.5,
                        // scaleY: 1.8,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            'assets/all docs.png',
                          ),
                        ),
                      )),
                ),
              ),

              const SizedBox(
                height: 17,
              ),
              //
              //
              //
              //
              //
              //
              GridView.builder(
                shrinkWrap: true,
                controller: ScrollController(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: btnlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => btnlist[index]['onClick'],
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15, top: 15),
                      child: Container(
                        // height: MediaQuery.of(context).size.height * 10 / 100,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                offset: Offset(3, 3),
                                blurRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: ThemeColors.primaryColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 10 / 100,
                              child: Image.asset(
                                btnlist[index]['icon'],
                                // width:
                                //     MediaQuery.of(context).size.width * 70 / 100,
                                // height:
                                //     MediaQuery.of(context).size.width * 20 / 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            // const SizedBox(height: 4, child: Divider()),
                            Text(
                              btnlist[index]['title'].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////
//////
//////
///
///

/////
/////
//////..........Drawer widget............../////
/////
//////
/////
/////
/////
/////
class Drawerwidget extends StatelessWidget {
  const Drawerwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
              decoration: const BoxDecoration(
                  color: ThemeColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              height: MediaQuery.of(context).size.height * 2.5 / 10,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(left: 17.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      child: Icon(Icons.person_4),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'User Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+92354607643',
                          style: TextStyle(
                              color: Color.fromARGB(255, 229, 217, 217),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              )),

          // Container(
          //     color: const Color.fromARGB(255, 93, 0, 255),
          //     width: MediaQuery.of(context).size.width * 1 / 1,
          //     child: const DrawerHeader(child: Icon(Icons.document_scanner))),
          //
          //
          //
          //
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Create(),
                ),
              );
            },
            leading: const Icon(Icons.add),
            title: const Text('Create Documents'),
          ),
          const Divider(),
          //
          //
          //
          //
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Olddoc(),
                ),
              );
            },
            leading: const Icon(Icons.history),
            title: const Text('Old Documents'),
          ),
          const Divider(),
          //
          //
          //
          //
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Brand(),
                ),
              );
            },
            leading: const Icon(Icons.card_membership),
            title: const Text('Branding'),
          ),
          const Divider(),
          //
          //
          //
          //
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Signupp(),
                ),
              );
            },
            leading: const Icon(Icons.card_membership),
            title: const Text('Account'),
          ),
          const Divider(),
          //
          //
          //
          //
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Track(),
                ),
              );
            },
            leading: const Icon(Icons.track_changes),
            title: const Text('Track'),
          ),
          //
          //
          //
          //
          //
          // // // / // // Log out // // // //
          ////
          //////
          /////       const Divider(),
          const Spacer(),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            tileColor: Colors.grey.shade200,
            title: const Text(
              'Logout',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 255, 162, 0),
            ),
          ),
          const Divider(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
