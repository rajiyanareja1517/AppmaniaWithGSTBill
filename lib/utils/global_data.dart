import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class GlobalData {
  static button({required String text}) {
    return Container(
      height: 47,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static button2({required dynamic icons}) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Icon(
        icons,
        color: Colors.white,
        size: 15,
      ),
    );
  }

  static String pdfName = "Appmania";

  PdfColor pdfPrimaryBlack = PdfColors.green;
  PdfColor pdfPrimaryGreen = PdfColors.green900;
}
