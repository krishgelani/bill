import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../main.dart';
import '../model/modelclass.dart';

void pdfGen(List<Model> m1)async{

  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        build: (pw.Context context){
          return pw.Padding(
            padding: const pw.EdgeInsets.all(10.0),
            child: pw.Column(
              children: [
                pw.Align(
                  alignment: pw.Alignment.center,
                  child: pw.Text(
                    "Bussiness Name",
                    style: pw.TextStyle(fontSize: 35, fontWeight: pw.FontWeight.bold),
                  ),
                ),
                pw.Align(
                  alignment: pw.Alignment.center,
                  child: pw.Text(
                    "177 Bleekr Street,\n     Manhatten, \n      New York\n+917862952601",
                    style: pw.TextStyle(fontSize: 20),
                  ),
                ),
                pw.SizedBox(height: 20),
                pw.Text(
                  "----------------------------------------",
                  style: pw.TextStyle(fontSize: 28),
                ),
                pw.Text(
                  "Item                            Qty          Price",
                  style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
                ),
                pw.Text(
                  "----------------------------------------",
                  style: pw.TextStyle(fontSize: 28),
                ),
                pw.Expanded(
                  child: pw.ListView.builder(
                    itemCount: m1.length,
                    itemBuilder: (context, index) {
                      return pw.Column(
                        children: [
                          pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                            children: [
                              pw.Container(
                                  padding: pw.EdgeInsets.only(left: 15),
                                  width: 170,
                                  child: pw.Text(
                                    "${m1[index].iname}",
                                    style: pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 18,
                                        fontWeight: pw.FontWeight.normal),
                                  )),
                              pw.Container(
                                  alignment: pw.Alignment.center,
                                  width: 85,
                                  child: pw.Text(
                                    "${m1[index].quantity}",
                                    style: pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 17,
                                        fontWeight: pw.FontWeight.normal),
                                  )),
                              pw.Container(
                                  padding: pw.EdgeInsets.only(right: 15),
                                  alignment: pw.Alignment.centerRight,
                                  width: 85,
                                  child: pw.Text(
                                    "${m1[index].price}",
                                    style: pw.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 17,
                                        fontWeight: pw.FontWeight.normal),
                                  )),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
                pw.Text(
                  "----------------------------------------",
                  style: pw.TextStyle(fontSize: 28),
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Container(
                        padding: pw.EdgeInsets.only(left: 15),
                        child: pw.Text(
                          "Total Price",
                          style: pw.TextStyle(
                              fontSize: 18, fontWeight: pw.FontWeight.bold),
                        )),
                    pw.Container(
                      padding: pw.EdgeInsets.only(right: 15),
                      child: pw.Text(
                        "$sum",
                        style:
                        pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                pw.Text(
                  "----------------------------------------",
                  style: pw.TextStyle(fontSize: 28),
                ),
                pw.SizedBox(height: 40),
                pw.Column(
                  children: [
                    pw.Text(
                      "Thanks You For Supporting",
                      style: pw.TextStyle(
                          fontSize: 24,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black),
                    ),
                    pw.Text(
                      "Local Bussiness!",
                      style: pw.TextStyle(
                          fontSize: 24,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black),
                    ),
                  ],
                ),
                pw.Expanded(
                  child: pw.Container(
                    width: 320,
                  ),
                )
              ],
            ),
          );
        }
    ),
  );

  Directory? dir = await getExternalStorageDirectory();

  File k1 = File("${dir!.path}/mypdf.pdf");

  print("=======${k1.path}");
  k1.writeAsBytes(await pdf.save());

}