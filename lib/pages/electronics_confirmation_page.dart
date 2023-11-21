import 'package:flutter/material.dart';
import 'package:wizstamp/pages/electronics_result_page.dart';
import 'package:wizstamp/pages/real_estate_rent_result_document_page.dart';
import 'package:wizstamp/pages/real_estate_seller_document_result_page.dart';

class ElectronicsDocumentConfirmationPage extends StatelessWidget {
  final String name;

  ElectronicsDocumentConfirmationPage({
    required this.name,
    required this.phoneNumber,
    required this.cnic,
    required this.deviceName,
    required this.modelOfDevice,
    required this.priceOfDevice,
    required this.guaranteeOfDevice,
    required this.addressOfShop,
    required this.conditionOfDevice,
    required this.nameOfShop,
  });

  final String phoneNumber;
  final String cnic;
  final String deviceName;
  final String modelOfDevice;
  final String priceOfDevice;
  final String guaranteeOfDevice;
  final String nameOfShop;
  final String addressOfShop;
  final String conditionOfDevice;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rent confirmation Document'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('your design'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                height: size.height * 0.7,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    reusableRow('Name', name),
                    reusableRow('Phone Number', phoneNumber),
                    reusableRow('CNIC', cnic),
                    reusableRow('Device Name', deviceName),
                    reusableRow('Device Model', modelOfDevice),
                    reusableRow('Device Price', priceOfDevice),
                    reusableRow('Guarantee', guaranteeOfDevice),
                    reusableRow('Shop Name', nameOfShop),
                    reusableRow('Shop Address', addressOfShop),
                    reusableRow('Device Condition', conditionOfDevice),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: TextButton(
          child: const Text('Confirm', style: TextStyle(
            fontSize: 18,
          ),),
          onPressed: () {
            //// hit api

            //// save the document
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context)
            =>
                ElectronicsDocumentResultPage(name: name,
                    phoneNumber: phoneNumber,
                    cnic: cnic,
                    deviceName: deviceName,
                    modelOfDevice: modelOfDevice,
                    priceOfDevice: priceOfDevice,
                    guarantee: guaranteeOfDevice,
                    conditionOfDevice: conditionOfDevice,
                    addressOfShop: addressOfShop,
                    nameOfShop: nameOfShop)));
          },
        ),
      ),
    );
  }
}


Widget reusableRow(String label, value, {String? fontFamily, double? size,}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Expanded(
        flex: 1,
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
        ),
      ),
      Expanded(
        child: Text(
          value,
          // maxLines: 4,
          softWrap: true,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: size,
          ),
          // overflow: TextOverflow.fade,
        ),
      ),
    ],
  );
}