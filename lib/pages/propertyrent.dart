import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';
import 'package:wizstamp/pages/real_estate_rent_confirmation_page.dart';
import '../../utils/theme.dart';

class Propertyrent extends StatefulWidget {
  const Propertyrent({super.key});

  @override
  State<Propertyrent> createState() => _PropertyrentState();
}

class _PropertyrentState extends State<Propertyrent> {
  String signature1 = '';

  String signature2 = '';
  GlobalKey<SfSignaturePadState> _signaturePadKey = GlobalKey();
  GlobalKey<SfSignaturePadState> _signaturePadKey1 = GlobalKey();
  TextEditingController  nameController = TextEditingController();
  TextEditingController  phoneController = TextEditingController();
  TextEditingController  cnicController = TextEditingController();
  TextEditingController  officeController = TextEditingController();
  TextEditingController  comissionController = TextEditingController();
  TextEditingController  securityRentController = TextEditingController();
  TextEditingController  locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor.shade50,
      appBar: AppBar(
        title: const Text(
          'Property For Rent',
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  height: MediaQuery.of(context).size.height * 250 / 100,
                  child: Column(
                    children: [
                      //
                      //
                      //
                      //
                      //   Dealer information .....start..
                      //
                      //
                      //
                      //
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: Text(
                            "Owner/Dealer  information",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                              hintText: 'Full Name',
                              label: const Text(
                                'Name',
                                style: TextStyle(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Phone Number',
                              label: const Text(
                                'Phone Number',
                                style: TextStyle(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          keyboardType: TextInputType.number,

                          controller: cnicController,
                          decoration: InputDecoration(
                              hintText: 'CNIC (ID Card Number)',
                              label: const Text(
                                'CNIC',
                                style: TextStyle(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: officeController,
                          minLines: 2,
                          maxLines: 3,
                          decoration: InputDecoration(
                              hintText:
                                  'If you are a dealer than fill complete name & address of your office ',
                              label: const Text(
                                'Office',
                                style: TextStyle(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      //
                      //
                      //

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          keyboardType: TextInputType.number,

                          controller: comissionController,
                          decoration: InputDecoration(
                              hintText: 'Comission Amount of Dealer',
                              label: const Text(
                                'Comission Amount',
                                style: TextStyle(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      //
                      //
                      //

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          keyboardType: TextInputType.number,

                          controller: securityRentController,
                          minLines: 2,
                          maxLines: 2,
                          decoration: InputDecoration(
                              hintText: 'Monthly Rent',
                              label: const Text(
                                'Security & Monthly Rent',
                                style: TextStyle(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: locationController,
                          decoration: InputDecoration(
                              hintText:
                                  'Fill complete location of building that you want to rent out',
                              label: const Text(
                                'Building Location',
                                style: TextStyle(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                          minLines: 5,
                          maxLines: 20,
                        ),
                      ),
                      //
                      //
                      //
                      //
                      // signature // // /////............
                      //
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              height: 180,
                              width: 230,
                              child: SfSignaturePad(
                                minimumStrokeWidth: 1,
                                maximumStrokeWidth: 3,
                                strokeColor: Colors.blue,
                                key: _signaturePadKey,
                                backgroundColor: Colors.grey[200],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 0),
                              child: Row(
                                children: [
                                  TextButton(
                                      child:
                                          const Text('Save As Image'),
                                      onPressed: () async {
                                        ui.Image image = await _signaturePadKey
                                            .currentState!
                                            .toImage();
                                      }),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: TextButton(
                                        child: const Text("Clear"),
                                        onPressed: () async {
                                          _signaturePadKey.currentState!
                                              .clear();
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      //
                      //
                      //
                      //
                      //
                      //
                      //
                      //
                      //     Tenant information .....start....
                      //
                      //
                      //
                      //
                      //
                      //
                      //
                      //
                      //
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: Opacity(opacity: 0.3,
                            child: Text(
                              "Tenant Information",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Opacity(
                          opacity: 0.3,
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                                hintText: 'Full Name',
                                // label: const Text(
                                //   'Full Name',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black))),
                          ),
                        ),
                      ),
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Opacity(opacity: 0.3,
                          child: TextField(
                            keyboardType: TextInputType.number,

                            readOnly: true,
                            decoration: InputDecoration(
                                hintText: 'Phone Number',
                                // label: const Text(
                                //   'Phone Number ',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black))),
                          ),
                        ),
                      ),
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Opacity(opacity: 0.3,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            readOnly: true,
                            decoration: InputDecoration(
                                hintText: 'CNIC (ID Card Number)',
                                // label: const Text(
                                //   'CNIC',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black))),
                          ),
                        ),
                      ),
                      //
                      //
                      //
                      //
                      // signature // // /////............
                      //
                      //
                      //
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Container(
                            //   clipBehavior: Clip.antiAlias,
                            //   decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(20)),
                            //   height: 180,
                            //   width: 230,
                            //   child: SfSignaturePad(
                            //     minimumStrokeWidth: 1,
                            //     maximumStrokeWidth: 3,
                            //     strokeColor: Colors.blue,
                            //     key: _signaturePadKey1,
                            //     backgroundColor: Colors.grey[200],
                            //   ),
                            // ),
                            Opacity(
                              opacity:0.3,
                              child: Container(

                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(

                                border: Border.all(),
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20)),
                                height: 180,
                                width: 230,

                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 0),
                              child: Opacity(
                                opacity: 0.3,
                                child: Row(
                                  children: [
                                    TextButton(
                                        child:
                                            const Text('Save As Image'),
                                        onPressed: () async {
                                          ui.Image image = await _signaturePadKey
                                              .currentState!
                                              .toImage();
                                        }),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: TextButton(
                                          child: const Text("Clear"),
                                          onPressed: () async {
                                            _signaturePadKey1.currentState!
                                                .clear();
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      //
                      //
                      //
                      //
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      //
      //
      //
      //
      ///
      ///
      ///
      ///
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        backgroundColor: ThemeColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {



          if(nameController.text.isEmpty)
          {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Name is required')));
          }
          else if(phoneController.text.isEmpty)
          {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Phone Number is required')));

          }
          else if(cnicController.text.isEmpty)
          {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('CNIC is required')));

          }
          else if(officeController.text.isEmpty)
          {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Office section is required')));
          }
          else if(comissionController.text.isEmpty)
          {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Add Commission')));
          }
          else if(securityRentController.text.isEmpty)
          {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Add Price')));
          }
          else if(locationController.text.isEmpty)
          {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Location is required')));
          }

          else
          {
            print('go to new screen');
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => RentDocumentConfirmationPage(cnic: cnicController.text.toString(),
              commissionAmount: comissionController.text.toString(),
              name: nameController.text.toString(),
              office: officeController.text.toString(),
              phoneNumber: phoneController.text.toString(),
              monthlyRent: securityRentController.text.toString(),
              propertyLocation: locationController.text.toString(),
            ),));
          }











        },
        label: const Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.white,
        ),
        icon: const Text('Preview'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

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
  ///
  ///
  ///
  ///
  ///////
  ///
  ///
  /// show SnakBar ....//////////
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  bool isSnackBarVisible = false;

  void showSnackBarF(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: const Duration(seconds: 10),
        action: SnackBarAction(
          textColor: Colors.orange,
          label: 'Undo',
          onPressed: () {},
        ),
      ),
    );

    // Set a flag to indicate the SnackBar is visible
    isSnackBarVisible = true;

    // Optional: You can set a delay to update the flag when the SnackBar hides
    Future.delayed(const Duration(seconds: 10), () {
      isSnackBarVisible = false;
    });
  }
}
