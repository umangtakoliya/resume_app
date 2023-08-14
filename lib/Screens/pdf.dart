import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as mt;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../utils/globals.dart';

class Pdf extends StatefulWidget {
  const Pdf({super.key});

  @override
  State<Pdf> createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
  final pdf = pw.Document();

  genratePdf() async {
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.all(0),
        build: (context) => pw.Column(
          children: [
            pw.Expanded(
              flex: 3,
              child: pw.Container(
                padding: pw.EdgeInsets.only(left: 30),
                height: 200,
                decoration: pw.BoxDecoration(
                  color: PdfColors.grey,
                ),
                child: pw.Row(
                  children: [
                    pw.Container(
                      height: 150,
                      width: 150,
                      decoration: pw.BoxDecoration(
                        shape: pw.BoxShape.circle,
                        image: pw.DecorationImage(
                          image: pw.MemoryImage(
                              File(Globals.imagePath!).readAsBytesSync()),
                        ),
                      ),
                    ),
                    pw.SizedBox(
                      width: 30,
                    ),
                    pw.Container(
                      padding: pw.EdgeInsets.all(15),
                      height: 100,
                      width: 340,
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 5,
                        ),
                      ),
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            "${Globals.name}",
                            style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 35,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                          pw.Text(
                            "${Globals.currentdes}",
                            style: pw.TextStyle(
                              color: PdfColors.black,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            pw.Expanded(
              flex: 10,
              child: pw.Row(children: [
                pw.Expanded(
                  flex: 4,
                  child: pw.Container(
                    color: PdfColors.white,
                    child: pw.Column(
                      children: [
                        pw.Text(
                          "CONTACT",
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        pw.Row(children: [
                          // pw.Icon(
                          //   pw.IconData(mt.Icons.phone.codePoint),
                          //   size: 18,
                          // ),
                          pw.Text(
                            "${Globals.number}",
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 25,
                              )
                          ),
                        ])
                      ],
                    ),
                  ),
                ),
                pw.Expanded(
                  flex: 5,
                  child: pw.Container(
                    color: PdfColors.white,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    genratePdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => pdf.save(),
      ),
    );
  }
}
