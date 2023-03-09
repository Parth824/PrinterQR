import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class qrapp extends StatefulWidget {
  const qrapp({super.key});

  @override
  State<qrapp> createState() => _qrappState();
}

class _qrappState extends State<qrapp> {
  final pdf = pw.Document();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat(58, 40),
        // orientation: pw.PageOrientation.natural,

        build: (context) {
          return pw.Stack(
            children: [
              pw.Container(
                //color: PdfColors.yellow,
                height: double.infinity,
                width: double.infinity,
              ),
              pw.Row(
                children: [
                  pw.Transform.translate(
                    offset: PdfPoint(-5, -13.5),
                    child: pw.Transform.rotate(
                      angle: pi / 2,
                      child: pw.Text(
                        "QAZAX UCUZLUQ",
                        style: pw.TextStyle(
                          fontSize: 2,
                        ),
                      ),
                    ),
                  ),
                  pw.Transform.translate(
                    offset: PdfPoint(-19, -15),
                    child: pw.Transform.rotate(
                      angle: pi / 2,
                      child: pw.Container(
                        height: 7,
                        width: 20,
                        child: pw.Container(
                          child: pw.BarcodeWidget(
                            barcode: pw.Barcode.ean13(),
                            data: "8690605031404",
                            textStyle: pw.TextStyle(
                              fontSize: 2.2,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  pw.Transform.translate(
                    offset: PdfPoint(-32, -15),
                    child: pw.Transform.rotate(
                      angle: pi / 2,
                      child: pw.Text(
                        "Vanna Sobahan",
                        style: pw.TextStyle(
                          fontSize: 2,
                        ),
                      ),
                    ),
                  ),
                  pw.Transform.translate(
                    offset: PdfPoint(-46, -15),
                    child: pw.Transform.rotate(
                      angle: pi / 2,
                      child: pw.Text(
                        "3.40        AZN",
                        style: pw.TextStyle(
                          fontSize: 3,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              pw.Stack(
                children: [
                  pw.Container(
                    //color: PdfColors.pink,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  pw.Row(
                    children: [
                      pw.Transform.translate(
                        offset: PdfPoint(10, -13.5),
                        child: pw.Transform.rotate(
                          angle: pi / 2,
                          child: pw.Text(
                            "QAZAX UCUZLUQ",
                            style: pw.TextStyle(
                              fontSize: 2,
                            ),
                          ),
                        ),
                      ),
                      pw.Transform.translate(
                        offset: PdfPoint(-4, -15),
                        child: pw.Transform.rotate(
                          angle: pi / 2,
                          child: pw.Container(
                            height: 7,
                            width: 20,
                            child: pw.Container(
                              child: pw.BarcodeWidget(
                                barcode: pw.Barcode.ean13(),
                                data: "8690605031404",
                                textStyle: pw.TextStyle(
                                  fontSize: 2.2,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      pw.Transform.translate(
                        offset: PdfPoint(-17, -15),
                        child: pw.Transform.rotate(
                          angle: pi / 2,
                          child: pw.Text(
                            "Vanna Sobahan",
                            style: pw.TextStyle(
                              fontSize: 2,
                            ),
                          ),
                        ),
                      ),
                      pw.Transform.translate(
                        offset: PdfPoint(-31, -15),
                        child: pw.Transform.rotate(
                          angle: pi / 2,
                          child: pw.Text(
                            "3.40        AZN",
                            style: pw.TextStyle(
                              fontSize: 3,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              pw.Stack(
                children: [
                  pw.Container(
                    //  color: PdfColors.pink,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  pw.Row(
                    children: [
                      pw.Transform.translate(
                        offset: PdfPoint(25, -13.5),
                        child: pw.Transform.rotate(
                          angle: pi / 2,
                          child: pw.Text(
                            "QAZAX UCUZLUQ",
                            style: pw.TextStyle(
                              fontSize: 2,
                            ),
                          ),
                        ),
                      ),
                      pw.Transform.translate(
                        offset: PdfPoint(11, -15),
                        child: pw.Transform.rotate(
                          angle: pi / 2,
                          child: pw.Container(
                            height: 7,
                            width: 20,
                            child: pw.Container(
                              child: pw.BarcodeWidget(
                                barcode: pw.Barcode.ean13(),
                                data: "8690605031404",
                                textStyle: pw.TextStyle(
                                  fontSize: 2.2,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      pw.Transform.translate(
                        offset: PdfPoint(-2, -15),
                        child: pw.Transform.rotate(
                          angle: pi / 2,
                          child: pw.Text(
                            "Vanna Sobahan",
                            style: pw.TextStyle(
                              fontSize: 2,
                            ),
                          ),
                        ),
                      ),
                      pw.Transform.translate(
                        offset: PdfPoint(-16, -15),
                        child: pw.Transform.rotate(
                          angle: pi / 2,
                          child: pw.Text(
                            "3.40        AZN",
                            style: pw.TextStyle(
                              fontSize: 3,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Networking Printer..."),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Uint8List data = await pdf.save();
          await Printing.layoutPdf(
            onLayout: (format) => data,
          );
        },
        child: Icon(Icons.download),
      ),
      body: Center(
        child: Container(
          height: 200,
          child: SfBarcodeGenerator(
            value: "www.google.com",
            symbology: QRCode(),
            showValue: true,
          ),
        ),
      ),
    );
  }
}
