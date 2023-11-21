
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:wizstamp/pages/home.dart';

class ElectronicsDocumentResultPage extends StatelessWidget {
  final String name;
  ScreenshotController screenshotController = ScreenshotController();

  ElectronicsDocumentResultPage({
    required this.name,
    required this.phoneNumber,
    required this.cnic,
    required this.deviceName,
    required this.modelOfDevice,
    required this.priceOfDevice,
    required this.guarantee,
    required this.conditionOfDevice,
    required this.addressOfShop,
    required this.nameOfShop,

  });

  final String phoneNumber;
  final String cnic;
  final String deviceName;
  final String modelOfDevice;
  final String priceOfDevice;
  final String guarantee;
final String nameOfShop;
final String addressOfShop;
final String conditionOfDevice;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        // print('popscope function running');
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {
          return const Home();
        },), (route) => false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Seller Document result'),
          actions: [
            IconButton(onPressed: (){
              _captureAndSave();


            }, icon: const Icon(Icons.download)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.share))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Screenshot(
                  controller: screenshotController,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    height: size.height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                        reusableRow('Guarantee', guarantee),
                        reusableRow('Shop Name', nameOfShop),
                        reusableRow('Shop Address', addressOfShop),
                        reusableRow('Device Condition', conditionOfDevice),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
  Future<void> _captureAndSave() async {
    print('capture and save is running');
    final imageFile = await screenshotController.capture();

    // Check if imageFile is not null before using the null check operator
    if (imageFile != null) {
      final path = (await getExternalStorageDirectory())?.path;
      final fileName = 'Screenshot_${DateTime.now().millisecondsSinceEpoch}.png';
      final file = File('$path/$fileName');

      await file.writeAsBytes(imageFile, flush: true);
      OpenFile.open('$path/$fileName');
    } else {
      print('Error: Image file is null');
      // Handle the case where imageFile is null, for example, show an error message.
    }
  }

}


Widget reusableRow(String label,value, {String? fontFamily,double? size,})
{
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Expanded(
        flex: 1,
        child: Text(
          label,
          style:const TextStyle(
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