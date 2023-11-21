import 'dart:io';

import 'package:flutter_share/flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:wizstamp/pages/home.dart';

class SellerDocumentResultPage extends StatelessWidget {
  final String name;
ScreenshotController screenshotController = ScreenshotController();
  SellerDocumentResultPage({
    required this.name,
    required this.phoneNumber,
    required this.cnic,
    required this.office,
    required this.commissionAmount,
    required this.priceOfProperty,
    required this.propertyLocation,
  });

  final String phoneNumber;
  final String cnic;
  final String office;
  final String commissionAmount;
  final String priceOfProperty;
  final String propertyLocation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        ), (route) => false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Seller Document result'),
          actions: [
            IconButton(onPressed: () {
              // _createPDF();
              _captureAndSave();
            }, icon: const Icon(Icons.download)),
            IconButton(
                onPressed: () {
                  //share the document
                  // _shareDocument();
                },
                icon: const Icon(Icons.share))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('your design'),
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
                        reusableRow('Office', office),
                        reusableRow('Commission Amount', commissionAmount),
                        reusableRow('Price of Property', priceOfProperty),
                        reusableRow('Location', propertyLocation),
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
  // capture and save screenshot of document
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



//share document
  // void _shareDocument() async {
  //   print('share document running');
  //   final content = 'Document Details\n\n'
  //       'Name: $name\n'
  //       'Phone Number: $phoneNumber\n'
  //       'CNIC: $cnic\n'
  //       'Office: $office\n'
  //       'Commission Amount: $commissionAmount\n'
  //       'Price of Property: $priceOfProperty\n'
  //       'Location: $propertyLocation\n'
  //       'Signature: $signature';
  //   FlutterShare.share(title: 'Document', text: content);
  // }
  //
  // Future<void> _createPDF() async {
  //   print('create pdf is running');
  //   final content = 'Document Details\n\n'
  //       'Name: $name\n'
  //       'Phone Number: $phoneNumber\n'
  //       'CNIC: $cnic\n'
  //       'Office: $office\n'
  //       'Commission Amount: $commissionAmount\n'
  //       'Price of Property: $priceOfProperty\n'
  //       'Location: $propertyLocation\n'
  //       'Signature: $signature';
  //   PdfDocument pdfDocument = PdfDocument();
  //   final page = pdfDocument.pages.add();
  //   page.graphics.drawString(
  //     'Seller Document\n\n\n\n$content',
  //     PdfStandardFont(PdfFontFamily.helvetica, 19)
  //   );
  //
  //
  //   List<int> bytes = await pdfDocument.save();
  //   pdfDocument.dispose(); //release resources
  //   saveAndLaunchFile(bytes, 'Output.pdf');
  // }
  //
  // Future saveAndLaunchFile(List<int> bytes, String fileName) async {
  //   final path = (await getExternalStorageDirectory())?.path;
  //   final file = File('$path/$fileName');
  //   await file.writeAsBytes(bytes, flush: true);
  //   OpenFile.open('$path/$fileName');
  // }
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
