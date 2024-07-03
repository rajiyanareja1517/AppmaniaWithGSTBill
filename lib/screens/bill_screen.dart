import 'dart:io';

import 'package:appmania/utils/all_product_data.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../utils/global_data.dart';
import '../utils/textStyling.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({super.key});

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  final pw.Document pdf = pw.Document();

  @override
  void initState() {
    super.initState();

    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            children: [
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 20),
                    child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        pw.Text(
                          "Appmania",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 30,
                              color: PdfColors.green900),
                        ),
                      ],
                    ),
                  ),
                  //color: Colors.red,
                ),
              ),
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        child: pw.Container(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(left: 16),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Bill to",
                                      style: TextStyling.style3,
                                    )
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Text(
                                      "Rajiya Chauhan",
                                      style: TextStyling.style4,
                                    )
                                  ],
                                ),
                                pw.SizedBox(
                                  height: 5,
                                ),
                                pw.Column(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          "bhadvar pa Chowk, Junagadh",
                                          style: TextStyling.style4,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //color: Colors.blue,
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(right: 16),
                            child: pw.Column(
                              children: [
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Text(
                                      "Invoice",
                                      style: TextStyling.style3,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Text(
                                      "2515",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Text(
                                      "Date",
                                      style: TextStyling.style3,
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                  children: [
                                    pw.Text(
                                      "28/01/2006",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  //color: Colors.blue,
                ),
              ),
              pw.Divider(
                color: PdfColors.green,
                thickness: 2,
              ),
              pw.Expanded(
                flex: 3,
                child: pw.Container(
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 16, right: 16),
                    child: pw.Row(
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(top: 10),
                        ),
                        pw.Expanded(
                          child: pw.Container(
                            //color: Colors.red,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 20),
                              child: pw.Row(
                                children: [
                                  pw.Column(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.Text(
                                            "Description",
                                            style: TextStyling.style3,
                                          ),
                                        ],
                                      ),
                                      pw.Column(
                                        children: [
                                          ...ProductData.cartProductData.map(
                                            (e) => pw.Padding(
                                              padding: const pw.EdgeInsets.only(
                                                  top: 20),
                                              child: pw.Row(
                                                children: [
                                                  pw.Column(
                                                    crossAxisAlignment: pw
                                                        .CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      pw.Text(
                                                        "${e['title']}",
                                                        style:
                                                            TextStyling.style4,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          child: pw.Container(
                            //color: Colors.amber,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 20),
                              child: pw.Column(
                                children: [
                                  pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text(
                                        "Price",
                                        style: TextStyling.style3,
                                      ),
                                      pw.Text(
                                        "Qty",
                                        style: TextStyling.style3,
                                      ),
                                      pw.Text(
                                        "Total",
                                        style: TextStyling.style3,
                                      ),
                                    ],
                                  ),
                                  pw.Column(
                                    children: [
                                      ...ProductData.cartProductData.map(
                                        (e) => pw.Padding(
                                          padding:
                                              const pw.EdgeInsets.only(top: 20),
                                          child: pw.Row(
                                            mainAxisAlignment: pw
                                                .MainAxisAlignment.spaceBetween,
                                            children: [
                                              pw.Text(
                                                "${e['price']}",
                                                style: TextStyling.style4,
                                              ),
                                              pw.Text(
                                                "${e['count']}",
                                                style: TextStyling.style4,
                                              ),
                                              pw.Text(
                                                "${e['total']}",
                                                style: TextStyling.style4,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //color: Colors.green,
                ),
              ),
              pw.Divider(
                color: PdfColors.green,
                thickness: 2,
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Container(
                  child: pw.Row(
                    children: [
                      pw.Expanded(
                        child: pw.Container(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(
                                left: 16, right: 16, top: 20),
                            child: pw.Column(
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    children: [
                                      pw.Text(
                                        "Payment Method",
                                        style: TextStyling.style3,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Row(
                                  mainAxisAlignment:
                                      pw.MainAxisAlignment.spaceBetween,
                                  children: [
                                    pw.Text(
                                      "Credit Card",
                                      style: TextStyling.style4,
                                    ),
                                  ],
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    children: [
                                      pw.Text(
                                        "Terms & Condition",
                                        style: TextStyling.style3,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Column(
                                  children: [
                                    pw.Column(
                                      children: [
                                        pw.Text(
                                          "Ownership and Copyright of The Content ",
                                          style: TextStyling.style4,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //color: Colors.red,
                        ),
                      ),
                      pw.Expanded(
                        child: pw.Container(
                          child: pw.Padding(
                            padding: const pw.EdgeInsets.only(
                                left: 16, right: 16, top: 20),
                            child: pw.Column(
                              children: [
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text(
                                        "SubTotal",
                                        style: TextStyling.style3,
                                      ),
                                      pw.Text(
                                        "\$${ProductData.totalPrice()}",
                                        style: TextStyling.style4,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text(
                                        "Tax",
                                        style: TextStyling.style3,
                                      ),
                                      pw.Text(
                                        "18%",
                                        style: TextStyling.style4,
                                      ),
                                    ],
                                  ),
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(top: 10),
                                  child: pw.Row(
                                    mainAxisAlignment:
                                        pw.MainAxisAlignment.spaceBetween,
                                    children: [
                                      pw.Text(
                                        "Grand Total",
                                        style: TextStyling.style3,
                                      ),
                                      pw.Text(
                                        "\$ ${ProductData.finalTotalPrice()}",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          //color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  //color: Colors.amber,
                ),
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Appmania",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green.shade900),
                    ),
                  ],
                ),
              ),
              //color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Bill to",
                                  style: TextStyling.style,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Rajiya Chauhan",
                                  style: TextStyling.style2,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "bhadvar pa Chowk, Junahadh",
                                      style: TextStyling.style2,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      //color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Invoice",
                                  style: TextStyling.style,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "2801",
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Date",
                                  style: TextStyling.style,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "28/01/2006",
                                  style: TextStyling.style2
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // color: Colors.amber,
                    ),
                  ),
                ],
              ),
              //color: Colors.blue,
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Description",
                                        style: TextStyling.style,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      ...ProductData.cartProductData.map(
                                        (e) => Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 150,
                                                    child: Text(
                                                      "${e['title']}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyling.style2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Price",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "Qty",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "Total",
                                    style: TextStyling.style,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ...ProductData.cartProductData.map(
                                    (e) => Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${e['price']}",
                                            style: TextStyling.style2,
                                          ),
                                          Text(
                                            "${e['cartCount']}",
                                            style: TextStyling.style2,
                                          ),
                                          Text(
                                            "${ProductData.total(e)}",
                                            style: TextStyling.style2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //color: Colors.green,
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Payment Method",
                                    style: TextStyling.style,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Credit Card",
                                  style: TextStyling.style2,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Terms & Condition",
                                    style: TextStyling.style,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Ownership and Copyright of The Content ",
                                      style: TextStyling.style2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      //color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 12, right: 16, top: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "SubTotal",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "\$${ProductData.totalPrice()}",
                                    style: TextStyling.style2,
                                  ),
                                ],
                              ),
                            ),Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Delivery",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "${ProductData.totalDelivery()}",
                                    style: TextStyling.style2,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tax(18%)",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "${ProductData.totalGST()}",
                                    style: TextStyling.style2,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Grand Total ",
                                    style: TextStyling.style,
                                  ),
                                  Text(
                                    "\$${ProductData.finalTotalPrice()}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //color: Colors.amber,
                    ),
                  ),
                ],
              ),
              //color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () async {

                        const downloadsFolderPath = '/storage/emulated/0/Download/';

                    final Directory? directory =
                       Directory(downloadsFolderPath);
                    print("path: ${directory!.path}");
                    final File file =
                        File("${directory!.path}/${GlobalData.pdfName}.pdf");
                    await file.writeAsBytes(await pdf.save());

                  },
                  child: Icon(Icons.download),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
