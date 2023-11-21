import 'package:flutter/material.dart';
import 'package:wizstamp/pages/real_estate_rent_result_document_page.dart';
import 'package:wizstamp/pages/real_estate_seller_document_result_page.dart';
import 'package:wizstamp/pages/vehicle_result_page.dart';

class VehicleDocumentConfirmationPage extends StatelessWidget {
  VehicleDocumentConfirmationPage({
    required this.name,
    required this.phoneNumber,
    required this.cnic,
    required this.office,
    required this.commissionAmount,
    required this.priceOfVehicle,
    required this.chassisOfVehicle,
    required this.conditionOfVehicle,
    required this.engineNoOfVehicle,
    required this.horsePowerOfVehicle,
    required this.modelOfVehicle,
    required this.nameOfVehicle,
    required this.registrationOfVehicle,
  });

  final String name;
  final String phoneNumber;
  final String cnic;
  final String office;
  final String commissionAmount;
  final String priceOfVehicle;
  final String nameOfVehicle;
  final String modelOfVehicle;
  final String registrationOfVehicle;
  final String chassisOfVehicle;
  final String engineNoOfVehicle;
  final String horsePowerOfVehicle;
  final String conditionOfVehicle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    reusableRow('Office', office),
                    reusableRow('Commission Amount', commissionAmount),
                    reusableRow('Price Of Vehicle', priceOfVehicle),
                    reusableRow('Name', nameOfVehicle),
                    reusableRow('Model', modelOfVehicle),
                    reusableRow('Registration No', registrationOfVehicle),
                    reusableRow('Chassi No', chassisOfVehicle),
                    reusableRow('Engine No', engineNoOfVehicle),
                    reusableRow('Horse Power', horsePowerOfVehicle),
                    reusableRow('Condition', conditionOfVehicle),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: TextButton(
          child: const Text(
            'Confirm',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: () {
            //// hit api

            //// save the document

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => VehicleDocumentResultPage(

                  name: name,
                  phoneNumber: phoneNumber,
                  cnic: cnic,
                  office: office,
                  commissionAmount: commissionAmount,
                  priceOfVehicle: priceOfVehicle,
                  nameOfVehicle: nameOfVehicle,
                  modelOfVehicle: modelOfVehicle,
                  registrationOfVehicle: registrationOfVehicle,
                  chassisOfVehicle: chassisOfVehicle,
                  engineNoOfVehicle: engineNoOfVehicle,
                  horsePowerOfVehicle: horsePowerOfVehicle,
                  conditionOfVehicle: conditionOfVehicle),
            ));
          },
        ),
      ),
    );
  }
}

Widget reusableRow(
  String label,
  value, {
  String? fontFamily,
  double? size,
}) {
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
